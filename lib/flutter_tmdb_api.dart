
import 'dart:async';

import 'package:chopper/chopper.dart';
import 'model/tmdb3_swagger.swagger.dart';

class TmdbApi {
  late final ChopperClient _client;
  late final Tmdb3Swagger _service;

  TmdbApi({required String apiReadAccessToken}) {
    _service = Tmdb3Swagger.create();
    _client = ChopperClient(
      baseUrl: Uri.parse('https://api.themoviedb.org/3'),
      services: [_service],
      interceptors: [
        _AuthInterceptor(apiReadAccessToken),
      ],
      converter: const JsonConverter(),
    );
  }

  /// Zugriff auf alle generierten Endpoints
  Tmdb3Swagger get service => _service;

  /// Client schließen wenn nicht mehr benötigt
  void dispose() {
    _client.dispose();
  }
}

class _AuthInterceptor implements Interceptor {
  final String _token;
  _AuthInterceptor(this._token);

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(
      Chain<BodyType> chain,
      ) async {
    final request = applyHeader(
      chain.request,
      'Authorization',
      'Bearer $_token',
    );
    return chain.proceed(request);
  }
}