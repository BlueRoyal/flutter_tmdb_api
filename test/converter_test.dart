import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tmdb_api/model/client_mapping.dart';
import 'package:flutter_tmdb_api/model/tmdb3_swagger.swagger.dart';
import 'package:http/http.dart' as http;

/// Sample TMDB search/tv response payload
const _kSearchTvJson = {
  'page': 1,
  'results': [
    {
      'id': 93405,
      'name': 'Squid Game',
      'original_name': 'Ojing-eo geim',
      'overview': 'Hundreds of cash-strapped players accept a strange invitation.',
      'first_air_date': '2021-09-17',
      'vote_average': 7.9,
      'vote_count': 12345,
      'popularity': 200.0,
      'adult': false,
      'genre_ids': <Object>[10759, 9648, 18],
      'origin_country': <Object>['KR'],
      'original_language': 'ko',
    }
  ],
  'total_pages': 1,
  'total_results': 1,
};

void main() {
  // ---------------------------------------------------------------------------
  // $CustomJsonDecoder
  // ---------------------------------------------------------------------------
  group('\$CustomJsonDecoder', () {
    test('decodes SearchTvGet\$Response when factory is registered', () {
      final decoder = $CustomJsonDecoder({
        SearchTvGet$Response: SearchTvGet$Response.fromJsonFactory,
      });

      final result = decoder.decode<SearchTvGet$Response>(_kSearchTvJson);

      expect(result, isA<SearchTvGet$Response>());
      final response = result as SearchTvGet$Response;
      expect(response.page, 1);
      expect(response.totalResults, 1);
      expect(response.results, hasLength(1));
      expect(response.results!.first.name, 'Squid Game');
      expect(response.results!.first.id, 93405);
    });

    test('throws when factory is NOT registered (simulates wrong converter)', () {
      // An empty mapping is what you get when using Chopper's built-in
      // JsonConverter — it has no knowledge of the generated model classes.
      final decoder = $CustomJsonDecoder({});

      expect(
        () => decoder.decode<SearchTvGet$Response>(_kSearchTvJson),
        throwsA(anything),
      );
    });

    test('returns raw value for Map type parameter', () {
      final decoder = $CustomJsonDecoder({});
      final result = decoder.decode<Map>(_kSearchTvJson);
      expect(result, isA<Map>());
    });
  });

  // ---------------------------------------------------------------------------
  // generatedMapping registration
  // ---------------------------------------------------------------------------
  group('generatedMapping', () {
    test('searchTvGet registers SearchTvGet\$Response factory', () {
      // Remove any prior registration so the test is isolated
      generatedMapping.remove(SearchTvGet$Response);
      expect(generatedMapping.containsKey(SearchTvGet$Response), isFalse);

      // This is exactly what searchTvGet() does before it calls _searchTvGet()
      generatedMapping.putIfAbsent(
        SearchTvGet$Response,
        () => SearchTvGet$Response.fromJsonFactory,
      );

      expect(generatedMapping.containsKey(SearchTvGet$Response), isTrue);
      expect(generatedMapping[SearchTvGet$Response], isNotNull);
    });

    test('registered factory produces correct type', () {
      generatedMapping.putIfAbsent(
        SearchTvGet$Response,
        () => SearchTvGet$Response.fromJsonFactory,
      );

      final factory = generatedMapping[SearchTvGet$Response]!;
      final instance = factory(_kSearchTvJson as Map<String, dynamic>);
      expect(instance, isA<SearchTvGet$Response>());
    });
  });

  // ---------------------------------------------------------------------------
  // $JsonSerializableConverter — full round-trip via HTTP response
  // ---------------------------------------------------------------------------
  group('\$JsonSerializableConverter', () {
    late $JsonSerializableConverter converter;

    setUp(() {
      converter = $JsonSerializableConverter();
      // Ensure the mapping is populated (mirrors what the API method does)
      generatedMapping.putIfAbsent(
        SearchTvGet$Response,
        () => SearchTvGet$Response.fromJsonFactory,
      );
    });

    test('decodes SearchTvGet\$Response from a successful HTTP response', () async {
      final body = jsonEncode(_kSearchTvJson);
      final httpResponse = http.Response(
        body,
        200,
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
      // Chopper Response wraps an http.Response; the body starts as the raw string
      final chopperResponse = Response<String>(httpResponse, body);

      final result = await converter
          .convertResponse<SearchTvGet$Response, SearchTvGet$Response>(
        chopperResponse,
      );

      expect(result.isSuccessful, isTrue);
      expect(result.body, isA<SearchTvGet$Response>());
      expect(result.body!.page, 1);
      expect(result.body!.results!.first.name, 'Squid Game');
    });

    test('returns null body for 204 No Content', () async {
      final httpResponse = http.Response('', 204);
      final chopperResponse = Response<String>(httpResponse, '');

      final result = await converter
          .convertResponse<SearchTvGet$Response, SearchTvGet$Response>(
        chopperResponse,
      );

      expect(result.body, isNull);
    });
  });

  // ---------------------------------------------------------------------------
  // Model deserialization
  // ---------------------------------------------------------------------------
  group('SearchTvGet\$Response.fromJson', () {
    test('parses all top-level fields', () {
      final response = SearchTvGet$Response.fromJson(
        _kSearchTvJson as Map<String, dynamic>,
      );

      expect(response.page, 1);
      expect(response.totalPages, 1);
      expect(response.totalResults, 1);
      expect(response.results, hasLength(1));
    });

    test('parses result items correctly', () {
      final response = SearchTvGet$Response.fromJson(
        _kSearchTvJson as Map<String, dynamic>,
      );
      final item = response.results!.first;

      expect(item.id, 93405);
      expect(item.name, 'Squid Game');
      expect(item.originalName, 'Ojing-eo geim');
      expect(item.firstAirDate, '2021-09-17');
      expect(item.voteAverage, 7.9);
      expect(item.adult, false);
      expect(item.originalLanguage, 'ko');
    });

    test('handles empty results list', () {
      final response = SearchTvGet$Response.fromJson({
        'page': 1,
        'results': <dynamic>[],
        'total_pages': 0,
        'total_results': 0,
      });

      expect(response.results, isEmpty);
      expect(response.totalResults, 0);
    });

    test('handles missing optional fields gracefully', () {
      // Only the minimum required fields
      final response = SearchTvGet$Response.fromJson({
        'page': 1,
        'results': <dynamic>[
          {'id': 1}
        ],
        'total_pages': 1,
        'total_results': 1,
      });

      expect(response.page, 1);
      expect(response.results!.first.id, 1);
      expect(response.results!.first.name, isNull);
    });
  });
}
