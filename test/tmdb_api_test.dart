import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tmdb_api/flutter_tmdb_api.dart';
import 'package:flutter_tmdb_api/model/tmdb3_swagger.swagger.dart';

void main() {
  group('TmdbApi', () {
    late TmdbApi api;

    setUp(() {
      api = TmdbApi(apiReadAccessToken: 'test-token');
    });

    tearDown(() {
      api.dispose();
    });

    // This test catches the exact bug where JsonConverter() was used instead of
    // $JsonSerializableConverter(). The built-in JsonConverter cannot deserialize
    // typed model classes like SearchTvGet$Response and would throw a cast error
    // at runtime.
    test('uses \$JsonSerializableConverter, not the built-in JsonConverter', () {
      expect(
        api.converterForTesting,
        isA<$JsonSerializableConverter>(),
        reason:
            'TmdbApi must use \$JsonSerializableConverter so that generated '
            'model classes (e.g. SearchTvGet\$Response) are deserialized '
            'correctly. Using Chopper\'s built-in JsonConverter causes a '
            'type cast error at runtime.',
      );
    });

    test('exposes the generated Tmdb3Swagger service', () {
      expect(api.service, isA<Tmdb3Swagger>());
    });
  });
}
