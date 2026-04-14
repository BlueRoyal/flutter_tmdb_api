/// Integration tests — require a real TMDB API token.
///
/// Run with:
///   flutter test test/integration_test.dart \
///     --dart-define=TMDB_API_TOKEN=your_token
///
/// Tests are skipped automatically when no token is provided so that
/// CI / regular `flutter test` runs stay green without credentials.
library;

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tmdb_api/flutter_tmdb_api.dart';
import 'package:flutter_tmdb_api/model/tmdb3_swagger.swagger.dart';

const _token = String.fromEnvironment('TMDB_API_TOKEN');

void main() {
  late TmdbApi api;

  setUpAll(() {
    if (_token.isEmpty) return;
    api = TmdbApi(apiReadAccessToken: _token);
  });

  tearDownAll(() {
    if (_token.isEmpty) return;
    api.dispose();
  });

  // Helper so every test skips cleanly when no token is supplied
  void tmdbTest(String description, Future<void> Function() body) {
    test(description, () async {
      if (_token.isEmpty) {
        markTestSkipped('No TMDB_API_TOKEN provided — skipping integration test');
        return;
      }
      await body();
    });
  }

  // ---------------------------------------------------------------------------
  // searchTvGet
  // ---------------------------------------------------------------------------
  group('searchTvGet', () {
    tmdbTest('returns typed SearchTvGet\$Response (no cast error)', () async {
      final res = await api.service.searchTvGet(query: 'FBI');

      expect(res.isSuccessful, isTrue,
          reason: 'HTTP request failed: ${res.error}');
      expect(res.body, isA<SearchTvGet$Response>(),
          reason: 'Body must be deserialized — not a raw Map');
    });

    tmdbTest('finds results for "Squid Game"', () async {
      final res = await api.service.searchTvGet(query: 'Squid Game');

      expect(res.isSuccessful, isTrue);
      final body = res.body!;
      expect(body.results, isNotEmpty);

      final squidGame = body.results!.firstWhere(
        (r) => r.id == 93405,
        orElse: () => throw TestFailure(
          'Expected Squid Game (id=93405) in results, '
          'got: ${body.results!.map((r) => '${r.name}(${r.id})').join(', ')}',
        ),
      );
      expect(squidGame.name, 'Squid Game');
      expect(squidGame.originalLanguage, 'ko');
    });

    tmdbTest('returns empty results for a nonsense query', () async {
      final res = await api.service.searchTvGet(
        query: 'xyznotexistingshow99999xyz',
      );

      expect(res.isSuccessful, isTrue);
      expect(res.body!.results, isEmpty);
      expect(res.body!.totalResults, 0);
    });

    tmdbTest('result items have expected fields populated', () async {
      final res = await api.service.searchTvGet(query: 'Breaking Bad');

      expect(res.isSuccessful, isTrue);
      final item = res.body!.results!.first;
      expect(item.id, isNotNull);
      expect(item.name, isNotNull);
      expect(item.firstAirDate, isNotNull);
      expect(item.voteAverage, isNotNull);
    });

    tmdbTest('pagination fields are present', () async {
      final res = await api.service.searchTvGet(query: 'The');

      expect(res.isSuccessful, isTrue);
      final body = res.body!;
      expect(body.page, 1);
      expect(body.totalPages, isNotNull);
      expect(body.totalResults, isNotNull);
    });
  });

  // ---------------------------------------------------------------------------
  // tvSeriesIdGet (detail endpoint)
  // ---------------------------------------------------------------------------
  group('tvSeriesIdGet', () {
    tmdbTest('fetches Squid Game detail by id', () async {
      final res = await api.service.tvSeriesIdGet(seriesId: 93405);

      expect(res.isSuccessful, isTrue,
          reason: 'HTTP request failed: ${res.error}');
      expect(res.body, isNotNull);
      expect(res.body!.id, 93405);
      expect(res.body!.name, 'Squid Game');
    });

    tmdbTest('returns 404 for non-existent id', () async {
      final res = await api.service.tvSeriesIdGet(seriesId: 999999999);

      // TMDB returns a 404 for unknown IDs — the request itself should not throw
      expect(res.isSuccessful, isFalse);
      expect(res.statusCode, 404);
    });
  });
}
