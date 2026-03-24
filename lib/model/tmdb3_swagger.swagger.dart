// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:collection/collection.dart';
import 'dart:convert';

import 'tmdb3_swagger.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'tmdb3_swagger.enums.swagger.dart' as enums;
export 'tmdb3_swagger.enums.swagger.dart';
export 'tmdb3_swagger.models.swagger.dart';

part 'tmdb3_swagger.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Tmdb3Swagger extends ChopperService {
  static Tmdb3Swagger create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    if (client != null) {
      return _$Tmdb3Swagger(client);
    }

    final newClient = ChopperClient(
      services: [_$Tmdb3Swagger()],
      converter: converter ?? $JsonSerializableConverter(),
      interceptors: interceptors ?? [],
      client: httpClient,
      authenticator: authenticator,
      errorConverter: errorConverter,
      baseUrl: baseUrl ?? Uri.parse('http://'),
    );
    return _$Tmdb3Swagger(newClient);
  }

  ///Validate Key
  Future<chopper.Response<AuthenticationGet$Response>> authenticationGet() {
    generatedMapping.putIfAbsent(
      AuthenticationGet$Response,
      () => AuthenticationGet$Response.fromJsonFactory,
    );

    return _authenticationGet();
  }

  ///Validate Key
  @GET(path: '/authentication')
  Future<chopper.Response<AuthenticationGet$Response>> _authenticationGet();

  ///Details
  ///@param account_id
  ///@param session_id
  Future<chopper.Response<AccountAccountIdGet$Response>> accountAccountIdGet({
    required int? accountId,
    String? sessionId,
  }) {
    generatedMapping.putIfAbsent(
      AccountAccountIdGet$Response,
      () => AccountAccountIdGet$Response.fromJsonFactory,
    );

    return _accountAccountIdGet(accountId: accountId, sessionId: sessionId);
  }

  ///Details
  ///@param account_id
  ///@param session_id
  @GET(path: '/account/{account_id}')
  Future<chopper.Response<AccountAccountIdGet$Response>> _accountAccountIdGet({
    @Path('account_id') required int? accountId,
    @Query('session_id') String? sessionId,
  });

  ///Add Favorite
  ///@param account_id
  ///@param session_id
  Future<chopper.Response<AccountAccountIdFavoritePost$Response>>
  accountAccountIdFavoritePost({
    required int? accountId,
    String? sessionId,
    required AccountAccountIdFavoritePost$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      AccountAccountIdFavoritePost$Response,
      () => AccountAccountIdFavoritePost$Response.fromJsonFactory,
    );

    return _accountAccountIdFavoritePost(
      accountId: accountId,
      sessionId: sessionId,
      body: body,
    );
  }

  ///Add Favorite
  ///@param account_id
  ///@param session_id
  @POST(path: '/account/{account_id}/favorite', optionalBody: true)
  Future<chopper.Response<AccountAccountIdFavoritePost$Response>>
  _accountAccountIdFavoritePost({
    @Path('account_id') required int? accountId,
    @Query('session_id') String? sessionId,
    @Body() required AccountAccountIdFavoritePost$RequestBody? body,
  });

  ///Add To Watchlist
  ///@param account_id
  ///@param session_id
  Future<chopper.Response<AccountAccountIdWatchlistPost$Response>>
  accountAccountIdWatchlistPost({
    required int? accountId,
    String? sessionId,
    required AccountAccountIdWatchlistPost$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      AccountAccountIdWatchlistPost$Response,
      () => AccountAccountIdWatchlistPost$Response.fromJsonFactory,
    );

    return _accountAccountIdWatchlistPost(
      accountId: accountId,
      sessionId: sessionId,
      body: body,
    );
  }

  ///Add To Watchlist
  ///@param account_id
  ///@param session_id
  @POST(path: '/account/{account_id}/watchlist', optionalBody: true)
  Future<chopper.Response<AccountAccountIdWatchlistPost$Response>>
  _accountAccountIdWatchlistPost({
    @Path('account_id') required int? accountId,
    @Query('session_id') String? sessionId,
    @Body() required AccountAccountIdWatchlistPost$RequestBody? body,
  });

  ///Favorite Movies
  ///@param account_id
  ///@param language
  ///@param page
  ///@param session_id
  ///@param sort_by
  Future<chopper.Response<AccountAccountIdFavoriteMoviesGet$Response>>
  accountAccountIdFavoriteMoviesGet({
    required int? accountId,
    String? language,
    int? page,
    String? sessionId,
    enums.AccountAccountIdFavoriteMoviesGetSortBy? sortBy,
  }) {
    generatedMapping.putIfAbsent(
      AccountAccountIdFavoriteMoviesGet$Response,
      () => AccountAccountIdFavoriteMoviesGet$Response.fromJsonFactory,
    );

    return _accountAccountIdFavoriteMoviesGet(
      accountId: accountId,
      language: language,
      page: page,
      sessionId: sessionId,
      sortBy: sortBy?.value?.toString(),
    );
  }

  ///Favorite Movies
  ///@param account_id
  ///@param language
  ///@param page
  ///@param session_id
  ///@param sort_by
  @GET(path: '/account/{account_id}/favorite/movies')
  Future<chopper.Response<AccountAccountIdFavoriteMoviesGet$Response>>
  _accountAccountIdFavoriteMoviesGet({
    @Path('account_id') required int? accountId,
    @Query('language') String? language,
    @Query('page') int? page,
    @Query('session_id') String? sessionId,
    @Query('sort_by') String? sortBy,
  });

  ///Favorite TV
  ///@param account_id
  ///@param language
  ///@param page
  ///@param session_id
  ///@param sort_by
  Future<chopper.Response<AccountAccountIdFavoriteTvGet$Response>>
  accountAccountIdFavoriteTvGet({
    required int? accountId,
    String? language,
    int? page,
    String? sessionId,
    enums.AccountAccountIdFavoriteTvGetSortBy? sortBy,
  }) {
    generatedMapping.putIfAbsent(
      AccountAccountIdFavoriteTvGet$Response,
      () => AccountAccountIdFavoriteTvGet$Response.fromJsonFactory,
    );

    return _accountAccountIdFavoriteTvGet(
      accountId: accountId,
      language: language,
      page: page,
      sessionId: sessionId,
      sortBy: sortBy?.value?.toString(),
    );
  }

  ///Favorite TV
  ///@param account_id
  ///@param language
  ///@param page
  ///@param session_id
  ///@param sort_by
  @GET(path: '/account/{account_id}/favorite/tv')
  Future<chopper.Response<AccountAccountIdFavoriteTvGet$Response>>
  _accountAccountIdFavoriteTvGet({
    @Path('account_id') required int? accountId,
    @Query('language') String? language,
    @Query('page') int? page,
    @Query('session_id') String? sessionId,
    @Query('sort_by') String? sortBy,
  });

  ///Lists
  ///@param account_id
  ///@param page
  ///@param session_id
  Future<chopper.Response<AccountAccountIdListsGet$Response>>
  accountAccountIdListsGet({
    required int? accountId,
    int? page,
    String? sessionId,
  }) {
    generatedMapping.putIfAbsent(
      AccountAccountIdListsGet$Response,
      () => AccountAccountIdListsGet$Response.fromJsonFactory,
    );

    return _accountAccountIdListsGet(
      accountId: accountId,
      page: page,
      sessionId: sessionId,
    );
  }

  ///Lists
  ///@param account_id
  ///@param page
  ///@param session_id
  @GET(path: '/account/{account_id}/lists')
  Future<chopper.Response<AccountAccountIdListsGet$Response>>
  _accountAccountIdListsGet({
    @Path('account_id') required int? accountId,
    @Query('page') int? page,
    @Query('session_id') String? sessionId,
  });

  ///Rated Movies
  ///@param account_id
  ///@param language
  ///@param page
  ///@param session_id
  ///@param sort_by
  Future<chopper.Response<AccountAccountIdRatedMoviesGet$Response>>
  accountAccountIdRatedMoviesGet({
    required int? accountId,
    String? language,
    int? page,
    String? sessionId,
    enums.AccountAccountIdRatedMoviesGetSortBy? sortBy,
  }) {
    generatedMapping.putIfAbsent(
      AccountAccountIdRatedMoviesGet$Response,
      () => AccountAccountIdRatedMoviesGet$Response.fromJsonFactory,
    );

    return _accountAccountIdRatedMoviesGet(
      accountId: accountId,
      language: language,
      page: page,
      sessionId: sessionId,
      sortBy: sortBy?.value?.toString(),
    );
  }

  ///Rated Movies
  ///@param account_id
  ///@param language
  ///@param page
  ///@param session_id
  ///@param sort_by
  @GET(path: '/account/{account_id}/rated/movies')
  Future<chopper.Response<AccountAccountIdRatedMoviesGet$Response>>
  _accountAccountIdRatedMoviesGet({
    @Path('account_id') required int? accountId,
    @Query('language') String? language,
    @Query('page') int? page,
    @Query('session_id') String? sessionId,
    @Query('sort_by') String? sortBy,
  });

  ///Rated TV
  ///@param account_id
  ///@param language
  ///@param page
  ///@param session_id
  ///@param sort_by
  Future<chopper.Response<AccountAccountIdRatedTvGet$Response>>
  accountAccountIdRatedTvGet({
    required int? accountId,
    String? language,
    int? page,
    String? sessionId,
    enums.AccountAccountIdRatedTvGetSortBy? sortBy,
  }) {
    generatedMapping.putIfAbsent(
      AccountAccountIdRatedTvGet$Response,
      () => AccountAccountIdRatedTvGet$Response.fromJsonFactory,
    );

    return _accountAccountIdRatedTvGet(
      accountId: accountId,
      language: language,
      page: page,
      sessionId: sessionId,
      sortBy: sortBy?.value?.toString(),
    );
  }

  ///Rated TV
  ///@param account_id
  ///@param language
  ///@param page
  ///@param session_id
  ///@param sort_by
  @GET(path: '/account/{account_id}/rated/tv')
  Future<chopper.Response<AccountAccountIdRatedTvGet$Response>>
  _accountAccountIdRatedTvGet({
    @Path('account_id') required int? accountId,
    @Query('language') String? language,
    @Query('page') int? page,
    @Query('session_id') String? sessionId,
    @Query('sort_by') String? sortBy,
  });

  ///Rated TV Episodes
  ///@param account_id
  ///@param language
  ///@param page
  ///@param session_id
  ///@param sort_by
  Future<chopper.Response<AccountAccountIdRatedTvEpisodesGet$Response>>
  accountAccountIdRatedTvEpisodesGet({
    required int? accountId,
    String? language,
    int? page,
    String? sessionId,
    enums.AccountAccountIdRatedTvEpisodesGetSortBy? sortBy,
  }) {
    generatedMapping.putIfAbsent(
      AccountAccountIdRatedTvEpisodesGet$Response,
      () => AccountAccountIdRatedTvEpisodesGet$Response.fromJsonFactory,
    );

    return _accountAccountIdRatedTvEpisodesGet(
      accountId: accountId,
      language: language,
      page: page,
      sessionId: sessionId,
      sortBy: sortBy?.value?.toString(),
    );
  }

  ///Rated TV Episodes
  ///@param account_id
  ///@param language
  ///@param page
  ///@param session_id
  ///@param sort_by
  @GET(path: '/account/{account_id}/rated/tv/episodes')
  Future<chopper.Response<AccountAccountIdRatedTvEpisodesGet$Response>>
  _accountAccountIdRatedTvEpisodesGet({
    @Path('account_id') required int? accountId,
    @Query('language') String? language,
    @Query('page') int? page,
    @Query('session_id') String? sessionId,
    @Query('sort_by') String? sortBy,
  });

  ///Watchlist Movies
  ///@param account_id
  ///@param language
  ///@param page
  ///@param session_id
  ///@param sort_by
  Future<chopper.Response<AccountAccountIdWatchlistMoviesGet$Response>>
  accountAccountIdWatchlistMoviesGet({
    required int? accountId,
    String? language,
    int? page,
    String? sessionId,
    enums.AccountAccountIdWatchlistMoviesGetSortBy? sortBy,
  }) {
    generatedMapping.putIfAbsent(
      AccountAccountIdWatchlistMoviesGet$Response,
      () => AccountAccountIdWatchlistMoviesGet$Response.fromJsonFactory,
    );

    return _accountAccountIdWatchlistMoviesGet(
      accountId: accountId,
      language: language,
      page: page,
      sessionId: sessionId,
      sortBy: sortBy?.value?.toString(),
    );
  }

  ///Watchlist Movies
  ///@param account_id
  ///@param language
  ///@param page
  ///@param session_id
  ///@param sort_by
  @GET(path: '/account/{account_id}/watchlist/movies')
  Future<chopper.Response<AccountAccountIdWatchlistMoviesGet$Response>>
  _accountAccountIdWatchlistMoviesGet({
    @Path('account_id') required int? accountId,
    @Query('language') String? language,
    @Query('page') int? page,
    @Query('session_id') String? sessionId,
    @Query('sort_by') String? sortBy,
  });

  ///Watchlist TV
  ///@param account_id
  ///@param language
  ///@param page
  ///@param session_id
  ///@param sort_by
  Future<chopper.Response<AccountAccountIdWatchlistTvGet$Response>>
  accountAccountIdWatchlistTvGet({
    required int? accountId,
    String? language,
    int? page,
    String? sessionId,
    enums.AccountAccountIdWatchlistTvGetSortBy? sortBy,
  }) {
    generatedMapping.putIfAbsent(
      AccountAccountIdWatchlistTvGet$Response,
      () => AccountAccountIdWatchlistTvGet$Response.fromJsonFactory,
    );

    return _accountAccountIdWatchlistTvGet(
      accountId: accountId,
      language: language,
      page: page,
      sessionId: sessionId,
      sortBy: sortBy?.value?.toString(),
    );
  }

  ///Watchlist TV
  ///@param account_id
  ///@param language
  ///@param page
  ///@param session_id
  ///@param sort_by
  @GET(path: '/account/{account_id}/watchlist/tv')
  Future<chopper.Response<AccountAccountIdWatchlistTvGet$Response>>
  _accountAccountIdWatchlistTvGet({
    @Path('account_id') required int? accountId,
    @Query('language') String? language,
    @Query('page') int? page,
    @Query('session_id') String? sessionId,
    @Query('sort_by') String? sortBy,
  });

  ///Create Guest Session
  Future<chopper.Response<AuthenticationGuestSessionNewGet$Response>>
  authenticationGuestSessionNewGet() {
    generatedMapping.putIfAbsent(
      AuthenticationGuestSessionNewGet$Response,
      () => AuthenticationGuestSessionNewGet$Response.fromJsonFactory,
    );

    return _authenticationGuestSessionNewGet();
  }

  ///Create Guest Session
  @GET(path: '/authentication/guest_session/new')
  Future<chopper.Response<AuthenticationGuestSessionNewGet$Response>>
  _authenticationGuestSessionNewGet();

  ///Create Request Token
  Future<chopper.Response<AuthenticationTokenNewGet$Response>>
  authenticationTokenNewGet() {
    generatedMapping.putIfAbsent(
      AuthenticationTokenNewGet$Response,
      () => AuthenticationTokenNewGet$Response.fromJsonFactory,
    );

    return _authenticationTokenNewGet();
  }

  ///Create Request Token
  @GET(path: '/authentication/token/new')
  Future<chopper.Response<AuthenticationTokenNewGet$Response>>
  _authenticationTokenNewGet();

  ///Create Session
  Future<chopper.Response<AuthenticationSessionNewPost$Response>>
  authenticationSessionNewPost({
    required AuthenticationSessionNewPost$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      AuthenticationSessionNewPost$Response,
      () => AuthenticationSessionNewPost$Response.fromJsonFactory,
    );

    return _authenticationSessionNewPost(body: body);
  }

  ///Create Session
  @POST(path: '/authentication/session/new', optionalBody: true)
  Future<chopper.Response<AuthenticationSessionNewPost$Response>>
  _authenticationSessionNewPost({
    @Body() required AuthenticationSessionNewPost$RequestBody? body,
  });

  ///Create Session (from v4 token)
  Future<chopper.Response<AuthenticationSessionConvert4Post$Response>>
  authenticationSessionConvert4Post({
    required AuthenticationSessionConvert4Post$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      AuthenticationSessionConvert4Post$Response,
      () => AuthenticationSessionConvert4Post$Response.fromJsonFactory,
    );

    return _authenticationSessionConvert4Post(body: body);
  }

  ///Create Session (from v4 token)
  @POST(path: '/authentication/session/convert/4', optionalBody: true)
  Future<chopper.Response<AuthenticationSessionConvert4Post$Response>>
  _authenticationSessionConvert4Post({
    @Body() required AuthenticationSessionConvert4Post$RequestBody? body,
  });

  ///Create Session (with login)
  Future<chopper.Response<AuthenticationTokenValidateWithLoginPost$Response>>
  authenticationTokenValidateWithLoginPost({
    required AuthenticationTokenValidateWithLoginPost$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      AuthenticationTokenValidateWithLoginPost$Response,
      () => AuthenticationTokenValidateWithLoginPost$Response.fromJsonFactory,
    );

    return _authenticationTokenValidateWithLoginPost(body: body);
  }

  ///Create Session (with login)
  @POST(path: '/authentication/token/validate_with_login', optionalBody: true)
  Future<chopper.Response<AuthenticationTokenValidateWithLoginPost$Response>>
  _authenticationTokenValidateWithLoginPost({
    @Body() required AuthenticationTokenValidateWithLoginPost$RequestBody? body,
  });

  ///Delete Session
  Future<chopper.Response<AuthenticationSessionDelete$Response>>
  authenticationSessionDelete({
    required AuthenticationSessionDelete$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      AuthenticationSessionDelete$Response,
      () => AuthenticationSessionDelete$Response.fromJsonFactory,
    );

    return _authenticationSessionDelete(body: body);
  }

  ///Delete Session
  @DELETE(path: '/authentication/session')
  Future<chopper.Response<AuthenticationSessionDelete$Response>>
  _authenticationSessionDelete({
    @Body() required AuthenticationSessionDelete$RequestBody? body,
  });

  ///Movie Certifications
  Future<chopper.Response<CertificationMovieListGet$Response>>
  certificationMovieListGet() {
    generatedMapping.putIfAbsent(
      CertificationMovieListGet$Response,
      () => CertificationMovieListGet$Response.fromJsonFactory,
    );

    return _certificationMovieListGet();
  }

  ///Movie Certifications
  @GET(path: '/certification/movie/list')
  Future<chopper.Response<CertificationMovieListGet$Response>>
  _certificationMovieListGet();

  ///TV Certifications
  Future<chopper.Response<CertificationTvListGet$Response>>
  certificationTvListGet() {
    generatedMapping.putIfAbsent(
      CertificationTvListGet$Response,
      () => CertificationTvListGet$Response.fromJsonFactory,
    );

    return _certificationTvListGet();
  }

  ///TV Certifications
  @GET(path: '/certification/tv/list')
  Future<chopper.Response<CertificationTvListGet$Response>>
  _certificationTvListGet();

  ///Movie List
  ///@param end_date
  ///@param page
  ///@param start_date
  Future<chopper.Response<MovieChangesGet$Response>> movieChangesGet({
    String? endDate,
    int? page,
    String? startDate,
  }) {
    generatedMapping.putIfAbsent(
      MovieChangesGet$Response,
      () => MovieChangesGet$Response.fromJsonFactory,
    );

    return _movieChangesGet(endDate: endDate, page: page, startDate: startDate);
  }

  ///Movie List
  ///@param end_date
  ///@param page
  ///@param start_date
  @GET(path: '/movie/changes')
  Future<chopper.Response<MovieChangesGet$Response>> _movieChangesGet({
    @Query('end_date') String? endDate,
    @Query('page') int? page,
    @Query('start_date') String? startDate,
  });

  ///People List
  ///@param end_date
  ///@param page
  ///@param start_date
  Future<chopper.Response<PersonChangesGet$Response>> personChangesGet({
    String? endDate,
    int? page,
    String? startDate,
  }) {
    generatedMapping.putIfAbsent(
      PersonChangesGet$Response,
      () => PersonChangesGet$Response.fromJsonFactory,
    );

    return _personChangesGet(
      endDate: endDate,
      page: page,
      startDate: startDate,
    );
  }

  ///People List
  ///@param end_date
  ///@param page
  ///@param start_date
  @GET(path: '/person/changes')
  Future<chopper.Response<PersonChangesGet$Response>> _personChangesGet({
    @Query('end_date') String? endDate,
    @Query('page') int? page,
    @Query('start_date') String? startDate,
  });

  ///TV List
  ///@param end_date
  ///@param page
  ///@param start_date
  Future<chopper.Response<TvChangesGet$Response>> tvChangesGet({
    String? endDate,
    int? page,
    String? startDate,
  }) {
    generatedMapping.putIfAbsent(
      TvChangesGet$Response,
      () => TvChangesGet$Response.fromJsonFactory,
    );

    return _tvChangesGet(endDate: endDate, page: page, startDate: startDate);
  }

  ///TV List
  ///@param end_date
  ///@param page
  ///@param start_date
  @GET(path: '/tv/changes')
  Future<chopper.Response<TvChangesGet$Response>> _tvChangesGet({
    @Query('end_date') String? endDate,
    @Query('page') int? page,
    @Query('start_date') String? startDate,
  });

  ///Details
  ///@param collection_id
  ///@param language
  Future<chopper.Response<CollectionCollectionIdGet$Response>>
  collectionCollectionIdGet({required int? collectionId, String? language}) {
    generatedMapping.putIfAbsent(
      CollectionCollectionIdGet$Response,
      () => CollectionCollectionIdGet$Response.fromJsonFactory,
    );

    return _collectionCollectionIdGet(
      collectionId: collectionId,
      language: language,
    );
  }

  ///Details
  ///@param collection_id
  ///@param language
  @GET(path: '/collection/{collection_id}')
  Future<chopper.Response<CollectionCollectionIdGet$Response>>
  _collectionCollectionIdGet({
    @Path('collection_id') required int? collectionId,
    @Query('language') String? language,
  });

  ///Images
  ///@param collection_id
  ///@param include_image_language specify a comma separated list of ISO-639-1 values to query, for example: `en-US,null`
  ///@param language
  Future<chopper.Response<CollectionCollectionIdImagesGet$Response>>
  collectionCollectionIdImagesGet({
    required int? collectionId,
    String? includeImageLanguage,
    String? language,
  }) {
    generatedMapping.putIfAbsent(
      CollectionCollectionIdImagesGet$Response,
      () => CollectionCollectionIdImagesGet$Response.fromJsonFactory,
    );

    return _collectionCollectionIdImagesGet(
      collectionId: collectionId,
      includeImageLanguage: includeImageLanguage,
      language: language,
    );
  }

  ///Images
  ///@param collection_id
  ///@param include_image_language specify a comma separated list of ISO-639-1 values to query, for example: `en-US,null`
  ///@param language
  @GET(path: '/collection/{collection_id}/images')
  Future<chopper.Response<CollectionCollectionIdImagesGet$Response>>
  _collectionCollectionIdImagesGet({
    @Path('collection_id') required int? collectionId,
    @Query('include_image_language') String? includeImageLanguage,
    @Query('language') String? language,
  });

  ///Translations
  ///@param collection_id
  Future<chopper.Response<CollectionCollectionIdTranslationsGet$Response>>
  collectionCollectionIdTranslationsGet({required int? collectionId}) {
    generatedMapping.putIfAbsent(
      CollectionCollectionIdTranslationsGet$Response,
      () => CollectionCollectionIdTranslationsGet$Response.fromJsonFactory,
    );

    return _collectionCollectionIdTranslationsGet(collectionId: collectionId);
  }

  ///Translations
  ///@param collection_id
  @GET(path: '/collection/{collection_id}/translations')
  Future<chopper.Response<CollectionCollectionIdTranslationsGet$Response>>
  _collectionCollectionIdTranslationsGet({
    @Path('collection_id') required int? collectionId,
  });

  ///Details
  ///@param company_id
  Future<chopper.Response<CompanyCompanyIdGet$Response>> companyCompanyIdGet({
    required int? companyId,
  }) {
    generatedMapping.putIfAbsent(
      CompanyCompanyIdGet$Response,
      () => CompanyCompanyIdGet$Response.fromJsonFactory,
    );

    return _companyCompanyIdGet(companyId: companyId);
  }

  ///Details
  ///@param company_id
  @GET(path: '/company/{company_id}')
  Future<chopper.Response<CompanyCompanyIdGet$Response>> _companyCompanyIdGet({
    @Path('company_id') required int? companyId,
  });

  ///Alternative Names
  ///@param company_id
  Future<chopper.Response<CompanyCompanyIdAlternativeNamesGet$Response>>
  companyCompanyIdAlternativeNamesGet({required int? companyId}) {
    generatedMapping.putIfAbsent(
      CompanyCompanyIdAlternativeNamesGet$Response,
      () => CompanyCompanyIdAlternativeNamesGet$Response.fromJsonFactory,
    );

    return _companyCompanyIdAlternativeNamesGet(companyId: companyId);
  }

  ///Alternative Names
  ///@param company_id
  @GET(path: '/company/{company_id}/alternative_names')
  Future<chopper.Response<CompanyCompanyIdAlternativeNamesGet$Response>>
  _companyCompanyIdAlternativeNamesGet({
    @Path('company_id') required int? companyId,
  });

  ///Images
  ///@param company_id
  Future<chopper.Response<CompanyCompanyIdImagesGet$Response>>
  companyCompanyIdImagesGet({required int? companyId}) {
    generatedMapping.putIfAbsent(
      CompanyCompanyIdImagesGet$Response,
      () => CompanyCompanyIdImagesGet$Response.fromJsonFactory,
    );

    return _companyCompanyIdImagesGet(companyId: companyId);
  }

  ///Images
  ///@param company_id
  @GET(path: '/company/{company_id}/images')
  Future<chopper.Response<CompanyCompanyIdImagesGet$Response>>
  _companyCompanyIdImagesGet({@Path('company_id') required int? companyId});

  ///Details
  Future<chopper.Response<ConfigurationGet$Response>> configurationGet() {
    generatedMapping.putIfAbsent(
      ConfigurationGet$Response,
      () => ConfigurationGet$Response.fromJsonFactory,
    );

    return _configurationGet();
  }

  ///Details
  @GET(path: '/configuration')
  Future<chopper.Response<ConfigurationGet$Response>> _configurationGet();

  ///Countries
  ///@param language
  Future<chopper.Response<List<ConfigurationCountriesGet$Response>>>
  configurationCountriesGet({String? language}) {
    return _configurationCountriesGet(language: language);
  }

  ///Countries
  ///@param language
  @GET(path: '/configuration/countries')
  Future<chopper.Response<List<ConfigurationCountriesGet$Response>>>
  _configurationCountriesGet({@Query('language') String? language});

  ///Jobs
  Future<chopper.Response<List<ConfigurationJobsGet$Response>>>
  configurationJobsGet() {
    return _configurationJobsGet();
  }

  ///Jobs
  @GET(path: '/configuration/jobs')
  Future<chopper.Response<List<ConfigurationJobsGet$Response>>>
  _configurationJobsGet();

  ///Languages
  Future<chopper.Response<List<ConfigurationLanguagesGet$Response>>>
  configurationLanguagesGet() {
    return _configurationLanguagesGet();
  }

  ///Languages
  @GET(path: '/configuration/languages')
  Future<chopper.Response<List<ConfigurationLanguagesGet$Response>>>
  _configurationLanguagesGet();

  ///Primary Translations
  Future<chopper.Response<List<String>>> configurationPrimaryTranslationsGet() {
    return _configurationPrimaryTranslationsGet();
  }

  ///Primary Translations
  @GET(path: '/configuration/primary_translations')
  Future<chopper.Response<List<String>>> _configurationPrimaryTranslationsGet();

  ///Timezones
  Future<chopper.Response<List<ConfigurationTimezonesGet$Response>>>
  configurationTimezonesGet() {
    return _configurationTimezonesGet();
  }

  ///Timezones
  @GET(path: '/configuration/timezones')
  Future<chopper.Response<List<ConfigurationTimezonesGet$Response>>>
  _configurationTimezonesGet();

  ///Details
  ///@param credit_id
  ///@param language
  Future<chopper.Response<CreditCreditIdGet$Response>> creditCreditIdGet({
    required String? creditId,
    String? language,
  }) {
    generatedMapping.putIfAbsent(
      CreditCreditIdGet$Response,
      () => CreditCreditIdGet$Response.fromJsonFactory,
    );

    return _creditCreditIdGet(creditId: creditId, language: language);
  }

  ///Details
  ///@param credit_id
  ///@param language
  @GET(path: '/credit/{credit_id}')
  Future<chopper.Response<CreditCreditIdGet$Response>> _creditCreditIdGet({
    @Path('credit_id') required String? creditId,
    @Query('language') String? language,
  });

  ///Movie
  ///@param certification use in conjunction with `region`
  ///@param certification.gte use in conjunction with `region`
  ///@param certification.lte use in conjunction with `region`
  ///@param certification_country use in conjunction with the `certification`, `certification.gte` and `certification.lte` filters
  ///@param include_adult
  ///@param include_video
  ///@param language
  ///@param page
  ///@param primary_release_year
  ///@param primary_release_date.gte
  ///@param primary_release_date.lte
  ///@param region
  ///@param release_date.gte
  ///@param release_date.lte
  ///@param sort_by
  ///@param vote_average.gte
  ///@param vote_average.lte
  ///@param vote_count.gte
  ///@param vote_count.lte
  ///@param watch_region use in conjunction with `with_watch_monetization_types ` or `with_watch_providers `
  ///@param with_cast can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_companies can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_crew can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_genres can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_keywords can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_origin_country
  ///@param with_original_language
  ///@param with_people can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_release_type possible values are: [1, 2, 3, 4, 5, 6] can be a comma (`AND`) or pipe (`OR`) separated query, can be used in conjunction with `region`
  ///@param with_runtime.gte
  ///@param with_runtime.lte
  ///@param with_watch_monetization_types possible values are: [flatrate, free, ads, rent, buy] use in conjunction with `watch_region`, can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_watch_providers use in conjunction with `watch_region`, can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param without_companies
  ///@param without_genres
  ///@param without_keywords
  ///@param without_watch_providers
  ///@param year
  Future<chopper.Response<DiscoverMovieGet$Response>> discoverMovieGet({
    String? certification,
    String? certificationGte,
    String? certificationLte,
    String? certificationCountry,
    bool? includeAdult,
    bool? includeVideo,
    String? language,
    int? page,
    int? primaryReleaseYear,
    String? primaryReleaseDateGte,
    String? primaryReleaseDateLte,
    String? region,
    String? releaseDateGte,
    String? releaseDateLte,
    enums.DiscoverMovieGetSortBy? sortBy,
    num? voteAverageGte,
    num? voteAverageLte,
    num? voteCountGte,
    num? voteCountLte,
    String? watchRegion,
    String? withCast,
    String? withCompanies,
    String? withCrew,
    String? withGenres,
    String? withKeywords,
    String? withOriginCountry,
    String? withOriginalLanguage,
    String? withPeople,
    int? withReleaseType,
    int? withRuntimeGte,
    int? withRuntimeLte,
    String? withWatchMonetizationTypes,
    String? withWatchProviders,
    String? withoutCompanies,
    String? withoutGenres,
    String? withoutKeywords,
    String? withoutWatchProviders,
    int? year,
  }) {
    generatedMapping.putIfAbsent(
      DiscoverMovieGet$Response,
      () => DiscoverMovieGet$Response.fromJsonFactory,
    );

    return _discoverMovieGet(
      certification: certification,
      certificationGte: certificationGte,
      certificationLte: certificationLte,
      certificationCountry: certificationCountry,
      includeAdult: includeAdult,
      includeVideo: includeVideo,
      language: language,
      page: page,
      primaryReleaseYear: primaryReleaseYear,
      primaryReleaseDateGte: primaryReleaseDateGte,
      primaryReleaseDateLte: primaryReleaseDateLte,
      region: region,
      releaseDateGte: releaseDateGte,
      releaseDateLte: releaseDateLte,
      sortBy: sortBy?.value?.toString(),
      voteAverageGte: voteAverageGte,
      voteAverageLte: voteAverageLte,
      voteCountGte: voteCountGte,
      voteCountLte: voteCountLte,
      watchRegion: watchRegion,
      withCast: withCast,
      withCompanies: withCompanies,
      withCrew: withCrew,
      withGenres: withGenres,
      withKeywords: withKeywords,
      withOriginCountry: withOriginCountry,
      withOriginalLanguage: withOriginalLanguage,
      withPeople: withPeople,
      withReleaseType: withReleaseType,
      withRuntimeGte: withRuntimeGte,
      withRuntimeLte: withRuntimeLte,
      withWatchMonetizationTypes: withWatchMonetizationTypes,
      withWatchProviders: withWatchProviders,
      withoutCompanies: withoutCompanies,
      withoutGenres: withoutGenres,
      withoutKeywords: withoutKeywords,
      withoutWatchProviders: withoutWatchProviders,
      year: year,
    );
  }

  ///Movie
  ///@param certification use in conjunction with `region`
  ///@param certification.gte use in conjunction with `region`
  ///@param certification.lte use in conjunction with `region`
  ///@param certification_country use in conjunction with the `certification`, `certification.gte` and `certification.lte` filters
  ///@param include_adult
  ///@param include_video
  ///@param language
  ///@param page
  ///@param primary_release_year
  ///@param primary_release_date.gte
  ///@param primary_release_date.lte
  ///@param region
  ///@param release_date.gte
  ///@param release_date.lte
  ///@param sort_by
  ///@param vote_average.gte
  ///@param vote_average.lte
  ///@param vote_count.gte
  ///@param vote_count.lte
  ///@param watch_region use in conjunction with `with_watch_monetization_types ` or `with_watch_providers `
  ///@param with_cast can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_companies can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_crew can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_genres can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_keywords can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_origin_country
  ///@param with_original_language
  ///@param with_people can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_release_type possible values are: [1, 2, 3, 4, 5, 6] can be a comma (`AND`) or pipe (`OR`) separated query, can be used in conjunction with `region`
  ///@param with_runtime.gte
  ///@param with_runtime.lte
  ///@param with_watch_monetization_types possible values are: [flatrate, free, ads, rent, buy] use in conjunction with `watch_region`, can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_watch_providers use in conjunction with `watch_region`, can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param without_companies
  ///@param without_genres
  ///@param without_keywords
  ///@param without_watch_providers
  ///@param year
  @GET(path: '/discover/movie')
  Future<chopper.Response<DiscoverMovieGet$Response>> _discoverMovieGet({
    @Query('certification') String? certification,
    @Query('certification.gte') String? certificationGte,
    @Query('certification.lte') String? certificationLte,
    @Query('certification_country') String? certificationCountry,
    @Query('include_adult') bool? includeAdult,
    @Query('include_video') bool? includeVideo,
    @Query('language') String? language,
    @Query('page') int? page,
    @Query('primary_release_year') int? primaryReleaseYear,
    @Query('primary_release_date.gte') String? primaryReleaseDateGte,
    @Query('primary_release_date.lte') String? primaryReleaseDateLte,
    @Query('region') String? region,
    @Query('release_date.gte') String? releaseDateGte,
    @Query('release_date.lte') String? releaseDateLte,
    @Query('sort_by') String? sortBy,
    @Query('vote_average.gte') num? voteAverageGte,
    @Query('vote_average.lte') num? voteAverageLte,
    @Query('vote_count.gte') num? voteCountGte,
    @Query('vote_count.lte') num? voteCountLte,
    @Query('watch_region') String? watchRegion,
    @Query('with_cast') String? withCast,
    @Query('with_companies') String? withCompanies,
    @Query('with_crew') String? withCrew,
    @Query('with_genres') String? withGenres,
    @Query('with_keywords') String? withKeywords,
    @Query('with_origin_country') String? withOriginCountry,
    @Query('with_original_language') String? withOriginalLanguage,
    @Query('with_people') String? withPeople,
    @Query('with_release_type') int? withReleaseType,
    @Query('with_runtime.gte') int? withRuntimeGte,
    @Query('with_runtime.lte') int? withRuntimeLte,
    @Query('with_watch_monetization_types') String? withWatchMonetizationTypes,
    @Query('with_watch_providers') String? withWatchProviders,
    @Query('without_companies') String? withoutCompanies,
    @Query('without_genres') String? withoutGenres,
    @Query('without_keywords') String? withoutKeywords,
    @Query('without_watch_providers') String? withoutWatchProviders,
    @Query('year') int? year,
  });

  ///TV
  ///@param air_date.gte
  ///@param air_date.lte
  ///@param first_air_date_year
  ///@param first_air_date.gte
  ///@param first_air_date.lte
  ///@param include_adult
  ///@param include_null_first_air_dates
  ///@param language
  ///@param page
  ///@param screened_theatrically
  ///@param sort_by
  ///@param timezone
  ///@param vote_average.gte
  ///@param vote_average.lte
  ///@param vote_count.gte
  ///@param vote_count.lte
  ///@param watch_region use in conjunction with `with_watch_monetization_types ` or `with_watch_providers `
  ///@param with_companies can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_genres can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_keywords can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_networks
  ///@param with_origin_country
  ///@param with_original_language
  ///@param with_runtime.gte
  ///@param with_runtime.lte
  ///@param with_status possible values are: [0, 1, 2, 3, 4, 5], can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_watch_monetization_types possible values are: [flatrate, free, ads, rent, buy] use in conjunction with `watch_region`, can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_watch_providers use in conjunction with `watch_region`, can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param without_companies
  ///@param without_genres
  ///@param without_keywords
  ///@param without_watch_providers
  ///@param with_type possible values are: [0, 1, 2, 3, 4, 5, 6], can be a comma (`AND`) or pipe (`OR`) separated query
  Future<chopper.Response<DiscoverTvGet$Response>> discoverTvGet({
    String? airDateGte,
    String? airDateLte,
    int? firstAirDateYear,
    String? firstAirDateGte,
    String? firstAirDateLte,
    bool? includeAdult,
    bool? includeNullFirstAirDates,
    String? language,
    int? page,
    bool? screenedTheatrically,
    enums.DiscoverTvGetSortBy? sortBy,
    String? timezone,
    num? voteAverageGte,
    num? voteAverageLte,
    num? voteCountGte,
    num? voteCountLte,
    String? watchRegion,
    String? withCompanies,
    String? withGenres,
    String? withKeywords,
    int? withNetworks,
    String? withOriginCountry,
    String? withOriginalLanguage,
    int? withRuntimeGte,
    int? withRuntimeLte,
    String? withStatus,
    String? withWatchMonetizationTypes,
    String? withWatchProviders,
    String? withoutCompanies,
    String? withoutGenres,
    String? withoutKeywords,
    String? withoutWatchProviders,
    String? withType,
  }) {
    generatedMapping.putIfAbsent(
      DiscoverTvGet$Response,
      () => DiscoverTvGet$Response.fromJsonFactory,
    );

    return _discoverTvGet(
      airDateGte: airDateGte,
      airDateLte: airDateLte,
      firstAirDateYear: firstAirDateYear,
      firstAirDateGte: firstAirDateGte,
      firstAirDateLte: firstAirDateLte,
      includeAdult: includeAdult,
      includeNullFirstAirDates: includeNullFirstAirDates,
      language: language,
      page: page,
      screenedTheatrically: screenedTheatrically,
      sortBy: sortBy?.value?.toString(),
      timezone: timezone,
      voteAverageGte: voteAverageGte,
      voteAverageLte: voteAverageLte,
      voteCountGte: voteCountGte,
      voteCountLte: voteCountLte,
      watchRegion: watchRegion,
      withCompanies: withCompanies,
      withGenres: withGenres,
      withKeywords: withKeywords,
      withNetworks: withNetworks,
      withOriginCountry: withOriginCountry,
      withOriginalLanguage: withOriginalLanguage,
      withRuntimeGte: withRuntimeGte,
      withRuntimeLte: withRuntimeLte,
      withStatus: withStatus,
      withWatchMonetizationTypes: withWatchMonetizationTypes,
      withWatchProviders: withWatchProviders,
      withoutCompanies: withoutCompanies,
      withoutGenres: withoutGenres,
      withoutKeywords: withoutKeywords,
      withoutWatchProviders: withoutWatchProviders,
      withType: withType,
    );
  }

  ///TV
  ///@param air_date.gte
  ///@param air_date.lte
  ///@param first_air_date_year
  ///@param first_air_date.gte
  ///@param first_air_date.lte
  ///@param include_adult
  ///@param include_null_first_air_dates
  ///@param language
  ///@param page
  ///@param screened_theatrically
  ///@param sort_by
  ///@param timezone
  ///@param vote_average.gte
  ///@param vote_average.lte
  ///@param vote_count.gte
  ///@param vote_count.lte
  ///@param watch_region use in conjunction with `with_watch_monetization_types ` or `with_watch_providers `
  ///@param with_companies can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_genres can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_keywords can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_networks
  ///@param with_origin_country
  ///@param with_original_language
  ///@param with_runtime.gte
  ///@param with_runtime.lte
  ///@param with_status possible values are: [0, 1, 2, 3, 4, 5], can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_watch_monetization_types possible values are: [flatrate, free, ads, rent, buy] use in conjunction with `watch_region`, can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param with_watch_providers use in conjunction with `watch_region`, can be a comma (`AND`) or pipe (`OR`) separated query
  ///@param without_companies
  ///@param without_genres
  ///@param without_keywords
  ///@param without_watch_providers
  ///@param with_type possible values are: [0, 1, 2, 3, 4, 5, 6], can be a comma (`AND`) or pipe (`OR`) separated query
  @GET(path: '/discover/tv')
  Future<chopper.Response<DiscoverTvGet$Response>> _discoverTvGet({
    @Query('air_date.gte') String? airDateGte,
    @Query('air_date.lte') String? airDateLte,
    @Query('first_air_date_year') int? firstAirDateYear,
    @Query('first_air_date.gte') String? firstAirDateGte,
    @Query('first_air_date.lte') String? firstAirDateLte,
    @Query('include_adult') bool? includeAdult,
    @Query('include_null_first_air_dates') bool? includeNullFirstAirDates,
    @Query('language') String? language,
    @Query('page') int? page,
    @Query('screened_theatrically') bool? screenedTheatrically,
    @Query('sort_by') String? sortBy,
    @Query('timezone') String? timezone,
    @Query('vote_average.gte') num? voteAverageGte,
    @Query('vote_average.lte') num? voteAverageLte,
    @Query('vote_count.gte') num? voteCountGte,
    @Query('vote_count.lte') num? voteCountLte,
    @Query('watch_region') String? watchRegion,
    @Query('with_companies') String? withCompanies,
    @Query('with_genres') String? withGenres,
    @Query('with_keywords') String? withKeywords,
    @Query('with_networks') int? withNetworks,
    @Query('with_origin_country') String? withOriginCountry,
    @Query('with_original_language') String? withOriginalLanguage,
    @Query('with_runtime.gte') int? withRuntimeGte,
    @Query('with_runtime.lte') int? withRuntimeLte,
    @Query('with_status') String? withStatus,
    @Query('with_watch_monetization_types') String? withWatchMonetizationTypes,
    @Query('with_watch_providers') String? withWatchProviders,
    @Query('without_companies') String? withoutCompanies,
    @Query('without_genres') String? withoutGenres,
    @Query('without_keywords') String? withoutKeywords,
    @Query('without_watch_providers') String? withoutWatchProviders,
    @Query('with_type') String? withType,
  });

  ///Find By ID
  ///@param external_id
  ///@param external_source
  ///@param language
  Future<chopper.Response<FindExternalIdGet$Response>> findExternalIdGet({
    required String? externalId,
    required enums.FindExternalIdGetExternalSource? externalSource,
    String? language,
  }) {
    generatedMapping.putIfAbsent(
      FindExternalIdGet$Response,
      () => FindExternalIdGet$Response.fromJsonFactory,
    );

    return _findExternalIdGet(
      externalId: externalId,
      externalSource: externalSource?.value?.toString(),
      language: language,
    );
  }

  ///Find By ID
  ///@param external_id
  ///@param external_source
  ///@param language
  @GET(path: '/find/{external_id}')
  Future<chopper.Response<FindExternalIdGet$Response>> _findExternalIdGet({
    @Path('external_id') required String? externalId,
    @Query('external_source') required String? externalSource,
    @Query('language') String? language,
  });

  ///Movie List
  ///@param language
  Future<chopper.Response<GenreMovieListGet$Response>> genreMovieListGet({
    String? language,
  }) {
    generatedMapping.putIfAbsent(
      GenreMovieListGet$Response,
      () => GenreMovieListGet$Response.fromJsonFactory,
    );

    return _genreMovieListGet(language: language);
  }

  ///Movie List
  ///@param language
  @GET(path: '/genre/movie/list')
  Future<chopper.Response<GenreMovieListGet$Response>> _genreMovieListGet({
    @Query('language') String? language,
  });

  ///TV List
  ///@param language
  Future<chopper.Response<GenreTvListGet$Response>> genreTvListGet({
    String? language,
  }) {
    generatedMapping.putIfAbsent(
      GenreTvListGet$Response,
      () => GenreTvListGet$Response.fromJsonFactory,
    );

    return _genreTvListGet(language: language);
  }

  ///TV List
  ///@param language
  @GET(path: '/genre/tv/list')
  Future<chopper.Response<GenreTvListGet$Response>> _genreTvListGet({
    @Query('language') String? language,
  });

  ///Rated Movies
  ///@param guest_session_id
  ///@param language
  ///@param page
  ///@param sort_by
  Future<chopper.Response<GuestSessionGuestSessionIdRatedMoviesGet$Response>>
  guestSessionGuestSessionIdRatedMoviesGet({
    required String? guestSessionId,
    String? language,
    int? page,
    enums.GuestSessionGuestSessionIdRatedMoviesGetSortBy? sortBy,
  }) {
    generatedMapping.putIfAbsent(
      GuestSessionGuestSessionIdRatedMoviesGet$Response,
      () => GuestSessionGuestSessionIdRatedMoviesGet$Response.fromJsonFactory,
    );

    return _guestSessionGuestSessionIdRatedMoviesGet(
      guestSessionId: guestSessionId,
      language: language,
      page: page,
      sortBy: sortBy?.value?.toString(),
    );
  }

  ///Rated Movies
  ///@param guest_session_id
  ///@param language
  ///@param page
  ///@param sort_by
  @GET(path: '/guest_session/{guest_session_id}/rated/movies')
  Future<chopper.Response<GuestSessionGuestSessionIdRatedMoviesGet$Response>>
  _guestSessionGuestSessionIdRatedMoviesGet({
    @Path('guest_session_id') required String? guestSessionId,
    @Query('language') String? language,
    @Query('page') int? page,
    @Query('sort_by') String? sortBy,
  });

  ///Rated TV
  ///@param guest_session_id
  ///@param language
  ///@param page
  ///@param sort_by
  Future<chopper.Response<GuestSessionGuestSessionIdRatedTvGet$Response>>
  guestSessionGuestSessionIdRatedTvGet({
    required String? guestSessionId,
    String? language,
    int? page,
    enums.GuestSessionGuestSessionIdRatedTvGetSortBy? sortBy,
  }) {
    generatedMapping.putIfAbsent(
      GuestSessionGuestSessionIdRatedTvGet$Response,
      () => GuestSessionGuestSessionIdRatedTvGet$Response.fromJsonFactory,
    );

    return _guestSessionGuestSessionIdRatedTvGet(
      guestSessionId: guestSessionId,
      language: language,
      page: page,
      sortBy: sortBy?.value?.toString(),
    );
  }

  ///Rated TV
  ///@param guest_session_id
  ///@param language
  ///@param page
  ///@param sort_by
  @GET(path: '/guest_session/{guest_session_id}/rated/tv')
  Future<chopper.Response<GuestSessionGuestSessionIdRatedTvGet$Response>>
  _guestSessionGuestSessionIdRatedTvGet({
    @Path('guest_session_id') required String? guestSessionId,
    @Query('language') String? language,
    @Query('page') int? page,
    @Query('sort_by') String? sortBy,
  });

  ///Rated TV Episodes
  ///@param guest_session_id
  ///@param language
  ///@param page
  ///@param sort_by
  Future<
    chopper.Response<GuestSessionGuestSessionIdRatedTvEpisodesGet$Response>
  >
  guestSessionGuestSessionIdRatedTvEpisodesGet({
    required String? guestSessionId,
    String? language,
    int? page,
    enums.GuestSessionGuestSessionIdRatedTvEpisodesGetSortBy? sortBy,
  }) {
    generatedMapping.putIfAbsent(
      GuestSessionGuestSessionIdRatedTvEpisodesGet$Response,
      () =>
          GuestSessionGuestSessionIdRatedTvEpisodesGet$Response.fromJsonFactory,
    );

    return _guestSessionGuestSessionIdRatedTvEpisodesGet(
      guestSessionId: guestSessionId,
      language: language,
      page: page,
      sortBy: sortBy?.value?.toString(),
    );
  }

  ///Rated TV Episodes
  ///@param guest_session_id
  ///@param language
  ///@param page
  ///@param sort_by
  @GET(path: '/guest_session/{guest_session_id}/rated/tv/episodes')
  Future<
    chopper.Response<GuestSessionGuestSessionIdRatedTvEpisodesGet$Response>
  >
  _guestSessionGuestSessionIdRatedTvEpisodesGet({
    @Path('guest_session_id') required String? guestSessionId,
    @Query('language') String? language,
    @Query('page') int? page,
    @Query('sort_by') String? sortBy,
  });

  ///Details
  ///@param keyword_id
  Future<chopper.Response<KeywordKeywordIdGet$Response>> keywordKeywordIdGet({
    required int? keywordId,
  }) {
    generatedMapping.putIfAbsent(
      KeywordKeywordIdGet$Response,
      () => KeywordKeywordIdGet$Response.fromJsonFactory,
    );

    return _keywordKeywordIdGet(keywordId: keywordId);
  }

  ///Details
  ///@param keyword_id
  @GET(path: '/keyword/{keyword_id}')
  Future<chopper.Response<KeywordKeywordIdGet$Response>> _keywordKeywordIdGet({
    @Path('keyword_id') required int? keywordId,
  });

  ///Movies
  ///@param keyword_id
  ///@param include_adult
  ///@param language
  ///@param page
  Future<chopper.Response<KeywordKeywordIdMoviesGet$Response>>
  keywordKeywordIdMoviesGet({
    required String? keywordId,
    bool? includeAdult,
    String? language,
    int? page,
  }) {
    generatedMapping.putIfAbsent(
      KeywordKeywordIdMoviesGet$Response,
      () => KeywordKeywordIdMoviesGet$Response.fromJsonFactory,
    );

    return _keywordKeywordIdMoviesGet(
      keywordId: keywordId,
      includeAdult: includeAdult,
      language: language,
      page: page,
    );
  }

  ///Movies
  ///@param keyword_id
  ///@param include_adult
  ///@param language
  ///@param page
  @GET(path: '/keyword/{keyword_id}/movies')
  Future<chopper.Response<KeywordKeywordIdMoviesGet$Response>>
  _keywordKeywordIdMoviesGet({
    @Path('keyword_id') required String? keywordId,
    @Query('include_adult') bool? includeAdult,
    @Query('language') String? language,
    @Query('page') int? page,
  });

  ///Add Movie
  ///@param list_id
  ///@param session_id
  Future<chopper.Response<ListListIdAddItemPost$Response>>
  listListIdAddItemPost({
    required int? listId,
    required String? sessionId,
    required ListListIdAddItemPost$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      ListListIdAddItemPost$Response,
      () => ListListIdAddItemPost$Response.fromJsonFactory,
    );

    return _listListIdAddItemPost(
      listId: listId,
      sessionId: sessionId,
      body: body,
    );
  }

  ///Add Movie
  ///@param list_id
  ///@param session_id
  @POST(path: '/list/{list_id}/add_item', optionalBody: true)
  Future<chopper.Response<ListListIdAddItemPost$Response>>
  _listListIdAddItemPost({
    @Path('list_id') required int? listId,
    @Query('session_id') required String? sessionId,
    @Body() required ListListIdAddItemPost$RequestBody? body,
  });

  ///Check Item Status
  ///@param list_id
  ///@param language
  ///@param movie_id
  Future<chopper.Response<ListListIdItemStatusGet$Response>>
  listListIdItemStatusGet({
    required int? listId,
    String? language,
    int? movieId,
  }) {
    generatedMapping.putIfAbsent(
      ListListIdItemStatusGet$Response,
      () => ListListIdItemStatusGet$Response.fromJsonFactory,
    );

    return _listListIdItemStatusGet(
      listId: listId,
      language: language,
      movieId: movieId,
    );
  }

  ///Check Item Status
  ///@param list_id
  ///@param language
  ///@param movie_id
  @GET(path: '/list/{list_id}/item_status')
  Future<chopper.Response<ListListIdItemStatusGet$Response>>
  _listListIdItemStatusGet({
    @Path('list_id') required int? listId,
    @Query('language') String? language,
    @Query('movie_id') int? movieId,
  });

  ///Clear
  ///@param list_id
  ///@param session_id
  ///@param confirm
  Future<chopper.Response<ListListIdClearPost$Response>> listListIdClearPost({
    required int? listId,
    required String? sessionId,
    required bool? confirm,
  }) {
    generatedMapping.putIfAbsent(
      ListListIdClearPost$Response,
      () => ListListIdClearPost$Response.fromJsonFactory,
    );

    return _listListIdClearPost(
      listId: listId,
      sessionId: sessionId,
      confirm: confirm,
    );
  }

  ///Clear
  ///@param list_id
  ///@param session_id
  ///@param confirm
  @POST(path: '/list/{list_id}/clear', optionalBody: true)
  Future<chopper.Response<ListListIdClearPost$Response>> _listListIdClearPost({
    @Path('list_id') required int? listId,
    @Query('session_id') required String? sessionId,
    @Query('confirm') required bool? confirm,
  });

  ///Create
  ///@param session_id
  Future<chopper.Response<ListPost$Response>> list$Post({
    required String? sessionId,
    required ListPost$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      ListPost$Response,
      () => ListPost$Response.fromJsonFactory,
    );

    return _list$Post(sessionId: sessionId, body: body);
  }

  ///Create
  ///@param session_id
  @POST(path: '/list', optionalBody: true)
  Future<chopper.Response<ListPost$Response>> _list$Post({
    @Query('session_id') required String? sessionId,
    @Body() required ListPost$RequestBody? body,
  });

  ///Delete
  ///@param list_id
  ///@param session_id
  Future<chopper.Response<ListListIdDelete$Response>> listListIdDelete({
    required int? listId,
    required String? sessionId,
  }) {
    generatedMapping.putIfAbsent(
      ListListIdDelete$Response,
      () => ListListIdDelete$Response.fromJsonFactory,
    );

    return _listListIdDelete(listId: listId, sessionId: sessionId);
  }

  ///Delete
  ///@param list_id
  ///@param session_id
  @DELETE(path: '/list/{list_id}')
  Future<chopper.Response<ListListIdDelete$Response>> _listListIdDelete({
    @Path('list_id') required int? listId,
    @Query('session_id') required String? sessionId,
  });

  ///Details
  ///@param list_id
  ///@param language
  ///@param page
  Future<chopper.Response<ListListIdGet$Response>> listListIdGet({
    required int? listId,
    String? language,
    int? page,
  }) {
    generatedMapping.putIfAbsent(
      ListListIdGet$Response,
      () => ListListIdGet$Response.fromJsonFactory,
    );

    return _listListIdGet(listId: listId, language: language, page: page);
  }

  ///Details
  ///@param list_id
  ///@param language
  ///@param page
  @GET(path: '/list/{list_id}')
  Future<chopper.Response<ListListIdGet$Response>> _listListIdGet({
    @Path('list_id') required int? listId,
    @Query('language') String? language,
    @Query('page') int? page,
  });

  ///Remove Movie
  ///@param list_id
  ///@param session_id
  Future<chopper.Response<ListListIdRemoveItemPost$Response>>
  listListIdRemoveItemPost({
    required int? listId,
    required String? sessionId,
    required ListListIdRemoveItemPost$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      ListListIdRemoveItemPost$Response,
      () => ListListIdRemoveItemPost$Response.fromJsonFactory,
    );

    return _listListIdRemoveItemPost(
      listId: listId,
      sessionId: sessionId,
      body: body,
    );
  }

  ///Remove Movie
  ///@param list_id
  ///@param session_id
  @POST(path: '/list/{list_id}/remove_item', optionalBody: true)
  Future<chopper.Response<ListListIdRemoveItemPost$Response>>
  _listListIdRemoveItemPost({
    @Path('list_id') required int? listId,
    @Query('session_id') required String? sessionId,
    @Body() required ListListIdRemoveItemPost$RequestBody? body,
  });

  ///Now Playing
  ///@param language
  ///@param page
  ///@param region ISO-3166-1 code
  Future<chopper.Response<MovieNowPlayingGet$Response>> movieNowPlayingGet({
    String? language,
    int? page,
    String? region,
  }) {
    generatedMapping.putIfAbsent(
      MovieNowPlayingGet$Response,
      () => MovieNowPlayingGet$Response.fromJsonFactory,
    );

    return _movieNowPlayingGet(language: language, page: page, region: region);
  }

  ///Now Playing
  ///@param language
  ///@param page
  ///@param region ISO-3166-1 code
  @GET(path: '/movie/now_playing')
  Future<chopper.Response<MovieNowPlayingGet$Response>> _movieNowPlayingGet({
    @Query('language') String? language,
    @Query('page') int? page,
    @Query('region') String? region,
  });

  ///Popular
  ///@param language
  ///@param page
  ///@param region ISO-3166-1 code
  Future<chopper.Response<MoviePopularGet$Response>> moviePopularGet({
    String? language,
    int? page,
    String? region,
  }) {
    generatedMapping.putIfAbsent(
      MoviePopularGet$Response,
      () => MoviePopularGet$Response.fromJsonFactory,
    );

    return _moviePopularGet(language: language, page: page, region: region);
  }

  ///Popular
  ///@param language
  ///@param page
  ///@param region ISO-3166-1 code
  @GET(path: '/movie/popular')
  Future<chopper.Response<MoviePopularGet$Response>> _moviePopularGet({
    @Query('language') String? language,
    @Query('page') int? page,
    @Query('region') String? region,
  });

  ///Top Rated
  ///@param language
  ///@param page
  ///@param region ISO-3166-1 code
  Future<chopper.Response<MovieTopRatedGet$Response>> movieTopRatedGet({
    String? language,
    int? page,
    String? region,
  }) {
    generatedMapping.putIfAbsent(
      MovieTopRatedGet$Response,
      () => MovieTopRatedGet$Response.fromJsonFactory,
    );

    return _movieTopRatedGet(language: language, page: page, region: region);
  }

  ///Top Rated
  ///@param language
  ///@param page
  ///@param region ISO-3166-1 code
  @GET(path: '/movie/top_rated')
  Future<chopper.Response<MovieTopRatedGet$Response>> _movieTopRatedGet({
    @Query('language') String? language,
    @Query('page') int? page,
    @Query('region') String? region,
  });

  ///Upcoming
  ///@param language
  ///@param page
  ///@param region ISO-3166-1 code
  Future<chopper.Response<MovieUpcomingGet$Response>> movieUpcomingGet({
    String? language,
    int? page,
    String? region,
  }) {
    generatedMapping.putIfAbsent(
      MovieUpcomingGet$Response,
      () => MovieUpcomingGet$Response.fromJsonFactory,
    );

    return _movieUpcomingGet(language: language, page: page, region: region);
  }

  ///Upcoming
  ///@param language
  ///@param page
  ///@param region ISO-3166-1 code
  @GET(path: '/movie/upcoming')
  Future<chopper.Response<MovieUpcomingGet$Response>> _movieUpcomingGet({
    @Query('language') String? language,
    @Query('page') int? page,
    @Query('region') String? region,
  });

  ///Details
  ///@param movie_id
  ///@param append_to_response comma separated list of endpoints within this namespace, 20 items max
  ///@param language
  Future<chopper.Response<MovieMovieIdGet$Response>> movieMovieIdGet({
    required int? movieId,
    String? appendToResponse,
    String? language,
  }) {
    generatedMapping.putIfAbsent(
      MovieMovieIdGet$Response,
      () => MovieMovieIdGet$Response.fromJsonFactory,
    );

    return _movieMovieIdGet(
      movieId: movieId,
      appendToResponse: appendToResponse,
      language: language,
    );
  }

  ///Details
  ///@param movie_id
  ///@param append_to_response comma separated list of endpoints within this namespace, 20 items max
  ///@param language
  @GET(path: '/movie/{movie_id}')
  Future<chopper.Response<MovieMovieIdGet$Response>> _movieMovieIdGet({
    @Path('movie_id') required int? movieId,
    @Query('append_to_response') String? appendToResponse,
    @Query('language') String? language,
  });

  ///Account States
  ///@param movie_id
  ///@param session_id
  ///@param guest_session_id
  Future<chopper.Response<MovieMovieIdAccountStatesGet$Response>>
  movieMovieIdAccountStatesGet({
    required int? movieId,
    String? sessionId,
    String? guestSessionId,
  }) {
    generatedMapping.putIfAbsent(
      MovieMovieIdAccountStatesGet$Response,
      () => MovieMovieIdAccountStatesGet$Response.fromJsonFactory,
    );

    return _movieMovieIdAccountStatesGet(
      movieId: movieId,
      sessionId: sessionId,
      guestSessionId: guestSessionId,
    );
  }

  ///Account States
  ///@param movie_id
  ///@param session_id
  ///@param guest_session_id
  @GET(path: '/movie/{movie_id}/account_states')
  Future<chopper.Response<MovieMovieIdAccountStatesGet$Response>>
  _movieMovieIdAccountStatesGet({
    @Path('movie_id') required int? movieId,
    @Query('session_id') String? sessionId,
    @Query('guest_session_id') String? guestSessionId,
  });

  ///Alternative Titles
  ///@param movie_id
  ///@param country specify a ISO-3166-1 value to filter the results
  Future<chopper.Response<MovieMovieIdAlternativeTitlesGet$Response>>
  movieMovieIdAlternativeTitlesGet({required int? movieId, String? country}) {
    generatedMapping.putIfAbsent(
      MovieMovieIdAlternativeTitlesGet$Response,
      () => MovieMovieIdAlternativeTitlesGet$Response.fromJsonFactory,
    );

    return _movieMovieIdAlternativeTitlesGet(
      movieId: movieId,
      country: country,
    );
  }

  ///Alternative Titles
  ///@param movie_id
  ///@param country specify a ISO-3166-1 value to filter the results
  @GET(path: '/movie/{movie_id}/alternative_titles')
  Future<chopper.Response<MovieMovieIdAlternativeTitlesGet$Response>>
  _movieMovieIdAlternativeTitlesGet({
    @Path('movie_id') required int? movieId,
    @Query('country') String? country,
  });

  ///Changes
  ///@param movie_id
  ///@param end_date
  ///@param page
  ///@param start_date
  Future<chopper.Response<MovieMovieIdChangesGet$Response>>
  movieMovieIdChangesGet({
    required int? movieId,
    String? endDate,
    int? page,
    String? startDate,
  }) {
    generatedMapping.putIfAbsent(
      MovieMovieIdChangesGet$Response,
      () => MovieMovieIdChangesGet$Response.fromJsonFactory,
    );

    return _movieMovieIdChangesGet(
      movieId: movieId,
      endDate: endDate,
      page: page,
      startDate: startDate,
    );
  }

  ///Changes
  ///@param movie_id
  ///@param end_date
  ///@param page
  ///@param start_date
  @GET(path: '/movie/{movie_id}/changes')
  Future<chopper.Response<MovieMovieIdChangesGet$Response>>
  _movieMovieIdChangesGet({
    @Path('movie_id') required int? movieId,
    @Query('end_date') String? endDate,
    @Query('page') int? page,
    @Query('start_date') String? startDate,
  });

  ///Credits
  ///@param movie_id
  ///@param language
  Future<chopper.Response<MovieMovieIdCreditsGet$Response>>
  movieMovieIdCreditsGet({required int? movieId, String? language}) {
    generatedMapping.putIfAbsent(
      MovieMovieIdCreditsGet$Response,
      () => MovieMovieIdCreditsGet$Response.fromJsonFactory,
    );

    return _movieMovieIdCreditsGet(movieId: movieId, language: language);
  }

  ///Credits
  ///@param movie_id
  ///@param language
  @GET(path: '/movie/{movie_id}/credits')
  Future<chopper.Response<MovieMovieIdCreditsGet$Response>>
  _movieMovieIdCreditsGet({
    @Path('movie_id') required int? movieId,
    @Query('language') String? language,
  });

  ///External IDs
  ///@param movie_id
  Future<chopper.Response<MovieMovieIdExternalIdsGet$Response>>
  movieMovieIdExternalIdsGet({required int? movieId}) {
    generatedMapping.putIfAbsent(
      MovieMovieIdExternalIdsGet$Response,
      () => MovieMovieIdExternalIdsGet$Response.fromJsonFactory,
    );

    return _movieMovieIdExternalIdsGet(movieId: movieId);
  }

  ///External IDs
  ///@param movie_id
  @GET(path: '/movie/{movie_id}/external_ids')
  Future<chopper.Response<MovieMovieIdExternalIdsGet$Response>>
  _movieMovieIdExternalIdsGet({@Path('movie_id') required int? movieId});

  ///Images
  ///@param movie_id
  ///@param include_image_language specify a comma separated list of ISO-639-1 values to query, for example: `en-US,null`
  ///@param language
  Future<chopper.Response<MovieMovieIdImagesGet$Response>>
  movieMovieIdImagesGet({
    required int? movieId,
    String? includeImageLanguage,
    String? language,
  }) {
    generatedMapping.putIfAbsent(
      MovieMovieIdImagesGet$Response,
      () => MovieMovieIdImagesGet$Response.fromJsonFactory,
    );

    return _movieMovieIdImagesGet(
      movieId: movieId,
      includeImageLanguage: includeImageLanguage,
      language: language,
    );
  }

  ///Images
  ///@param movie_id
  ///@param include_image_language specify a comma separated list of ISO-639-1 values to query, for example: `en-US,null`
  ///@param language
  @GET(path: '/movie/{movie_id}/images')
  Future<chopper.Response<MovieMovieIdImagesGet$Response>>
  _movieMovieIdImagesGet({
    @Path('movie_id') required int? movieId,
    @Query('include_image_language') String? includeImageLanguage,
    @Query('language') String? language,
  });

  ///Keywords
  ///@param movie_id
  Future<chopper.Response<MovieMovieIdKeywordsGet$Response>>
  movieMovieIdKeywordsGet({required String? movieId}) {
    generatedMapping.putIfAbsent(
      MovieMovieIdKeywordsGet$Response,
      () => MovieMovieIdKeywordsGet$Response.fromJsonFactory,
    );

    return _movieMovieIdKeywordsGet(movieId: movieId);
  }

  ///Keywords
  ///@param movie_id
  @GET(path: '/movie/{movie_id}/keywords')
  Future<chopper.Response<MovieMovieIdKeywordsGet$Response>>
  _movieMovieIdKeywordsGet({@Path('movie_id') required String? movieId});

  ///Latest
  Future<chopper.Response<MovieLatestGet$Response>> movieLatestGet() {
    generatedMapping.putIfAbsent(
      MovieLatestGet$Response,
      () => MovieLatestGet$Response.fromJsonFactory,
    );

    return _movieLatestGet();
  }

  ///Latest
  @GET(path: '/movie/latest')
  Future<chopper.Response<MovieLatestGet$Response>> _movieLatestGet();

  ///Lists
  ///@param movie_id
  ///@param language
  ///@param page
  Future<chopper.Response<MovieMovieIdListsGet$Response>> movieMovieIdListsGet({
    required int? movieId,
    String? language,
    int? page,
  }) {
    generatedMapping.putIfAbsent(
      MovieMovieIdListsGet$Response,
      () => MovieMovieIdListsGet$Response.fromJsonFactory,
    );

    return _movieMovieIdListsGet(
      movieId: movieId,
      language: language,
      page: page,
    );
  }

  ///Lists
  ///@param movie_id
  ///@param language
  ///@param page
  @GET(path: '/movie/{movie_id}/lists')
  Future<chopper.Response<MovieMovieIdListsGet$Response>>
  _movieMovieIdListsGet({
    @Path('movie_id') required int? movieId,
    @Query('language') String? language,
    @Query('page') int? page,
  });

  ///Recommendations
  ///@param movie_id
  ///@param language
  ///@param page
  Future<chopper.Response<Object>> movieMovieIdRecommendationsGet({
    required int? movieId,
    String? language,
    int? page,
  }) {
    return _movieMovieIdRecommendationsGet(
      movieId: movieId,
      language: language,
      page: page,
    );
  }

  ///Recommendations
  ///@param movie_id
  ///@param language
  ///@param page
  @GET(path: '/movie/{movie_id}/recommendations')
  Future<chopper.Response<Object>> _movieMovieIdRecommendationsGet({
    @Path('movie_id') required int? movieId,
    @Query('language') String? language,
    @Query('page') int? page,
  });

  ///Release Dates
  ///@param movie_id
  Future<chopper.Response<MovieMovieIdReleaseDatesGet$Response>>
  movieMovieIdReleaseDatesGet({required int? movieId}) {
    generatedMapping.putIfAbsent(
      MovieMovieIdReleaseDatesGet$Response,
      () => MovieMovieIdReleaseDatesGet$Response.fromJsonFactory,
    );

    return _movieMovieIdReleaseDatesGet(movieId: movieId);
  }

  ///Release Dates
  ///@param movie_id
  @GET(path: '/movie/{movie_id}/release_dates')
  Future<chopper.Response<MovieMovieIdReleaseDatesGet$Response>>
  _movieMovieIdReleaseDatesGet({@Path('movie_id') required int? movieId});

  ///Reviews
  ///@param movie_id
  ///@param language
  ///@param page
  Future<chopper.Response<MovieMovieIdReviewsGet$Response>>
  movieMovieIdReviewsGet({required int? movieId, String? language, int? page}) {
    generatedMapping.putIfAbsent(
      MovieMovieIdReviewsGet$Response,
      () => MovieMovieIdReviewsGet$Response.fromJsonFactory,
    );

    return _movieMovieIdReviewsGet(
      movieId: movieId,
      language: language,
      page: page,
    );
  }

  ///Reviews
  ///@param movie_id
  ///@param language
  ///@param page
  @GET(path: '/movie/{movie_id}/reviews')
  Future<chopper.Response<MovieMovieIdReviewsGet$Response>>
  _movieMovieIdReviewsGet({
    @Path('movie_id') required int? movieId,
    @Query('language') String? language,
    @Query('page') int? page,
  });

  ///Similar
  ///@param movie_id
  ///@param language
  ///@param page
  Future<chopper.Response<MovieMovieIdSimilarGet$Response>>
  movieMovieIdSimilarGet({required int? movieId, String? language, int? page}) {
    generatedMapping.putIfAbsent(
      MovieMovieIdSimilarGet$Response,
      () => MovieMovieIdSimilarGet$Response.fromJsonFactory,
    );

    return _movieMovieIdSimilarGet(
      movieId: movieId,
      language: language,
      page: page,
    );
  }

  ///Similar
  ///@param movie_id
  ///@param language
  ///@param page
  @GET(path: '/movie/{movie_id}/similar')
  Future<chopper.Response<MovieMovieIdSimilarGet$Response>>
  _movieMovieIdSimilarGet({
    @Path('movie_id') required int? movieId,
    @Query('language') String? language,
    @Query('page') int? page,
  });

  ///Translations
  ///@param movie_id
  Future<chopper.Response<MovieMovieIdTranslationsGet$Response>>
  movieMovieIdTranslationsGet({required int? movieId}) {
    generatedMapping.putIfAbsent(
      MovieMovieIdTranslationsGet$Response,
      () => MovieMovieIdTranslationsGet$Response.fromJsonFactory,
    );

    return _movieMovieIdTranslationsGet(movieId: movieId);
  }

  ///Translations
  ///@param movie_id
  @GET(path: '/movie/{movie_id}/translations')
  Future<chopper.Response<MovieMovieIdTranslationsGet$Response>>
  _movieMovieIdTranslationsGet({@Path('movie_id') required int? movieId});

  ///Videos
  ///@param movie_id
  ///@param language
  Future<chopper.Response<MovieMovieIdVideosGet$Response>>
  movieMovieIdVideosGet({required int? movieId, String? language}) {
    generatedMapping.putIfAbsent(
      MovieMovieIdVideosGet$Response,
      () => MovieMovieIdVideosGet$Response.fromJsonFactory,
    );

    return _movieMovieIdVideosGet(movieId: movieId, language: language);
  }

  ///Videos
  ///@param movie_id
  ///@param language
  @GET(path: '/movie/{movie_id}/videos')
  Future<chopper.Response<MovieMovieIdVideosGet$Response>>
  _movieMovieIdVideosGet({
    @Path('movie_id') required int? movieId,
    @Query('language') String? language,
  });

  ///Watch Providers
  ///@param movie_id
  Future<chopper.Response<MovieMovieIdWatchProvidersGet$Response>>
  movieMovieIdWatchProvidersGet({required int? movieId}) {
    generatedMapping.putIfAbsent(
      MovieMovieIdWatchProvidersGet$Response,
      () => MovieMovieIdWatchProvidersGet$Response.fromJsonFactory,
    );

    return _movieMovieIdWatchProvidersGet(movieId: movieId);
  }

  ///Watch Providers
  ///@param movie_id
  @GET(path: '/movie/{movie_id}/watch/providers')
  Future<chopper.Response<MovieMovieIdWatchProvidersGet$Response>>
  _movieMovieIdWatchProvidersGet({@Path('movie_id') required int? movieId});

  ///Add Rating
  ///@param movie_id
  ///@param guest_session_id
  ///@param session_id
  ///@param Content-Type
  Future<chopper.Response<MovieMovieIdRatingPost$Response>>
  movieMovieIdRatingPost({
    required int? movieId,
    String? guestSessionId,
    String? sessionId,
    String? contentType,
    required MovieMovieIdRatingPost$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      MovieMovieIdRatingPost$Response,
      () => MovieMovieIdRatingPost$Response.fromJsonFactory,
    );

    return _movieMovieIdRatingPost(
      movieId: movieId,
      guestSessionId: guestSessionId,
      sessionId: sessionId,
      contentType: contentType?.toString(),
      body: body,
    );
  }

  ///Add Rating
  ///@param movie_id
  ///@param guest_session_id
  ///@param session_id
  ///@param Content-Type
  @POST(path: '/movie/{movie_id}/rating', optionalBody: true)
  Future<chopper.Response<MovieMovieIdRatingPost$Response>>
  _movieMovieIdRatingPost({
    @Path('movie_id') required int? movieId,
    @Query('guest_session_id') String? guestSessionId,
    @Query('session_id') String? sessionId,
    @Header('Content-Type') String? contentType,
    @Body() required MovieMovieIdRatingPost$RequestBody? body,
  });

  ///Delete Rating
  ///@param movie_id
  ///@param Content-Type
  ///@param guest_session_id
  ///@param session_id
  Future<chopper.Response<MovieMovieIdRatingDelete$Response>>
  movieMovieIdRatingDelete({
    required int? movieId,
    String? contentType,
    String? guestSessionId,
    String? sessionId,
  }) {
    generatedMapping.putIfAbsent(
      MovieMovieIdRatingDelete$Response,
      () => MovieMovieIdRatingDelete$Response.fromJsonFactory,
    );

    return _movieMovieIdRatingDelete(
      movieId: movieId,
      contentType: contentType?.toString(),
      guestSessionId: guestSessionId,
      sessionId: sessionId,
    );
  }

  ///Delete Rating
  ///@param movie_id
  ///@param Content-Type
  ///@param guest_session_id
  ///@param session_id
  @DELETE(path: '/movie/{movie_id}/rating')
  Future<chopper.Response<MovieMovieIdRatingDelete$Response>>
  _movieMovieIdRatingDelete({
    @Path('movie_id') required int? movieId,
    @Header('Content-Type') String? contentType,
    @Query('guest_session_id') String? guestSessionId,
    @Query('session_id') String? sessionId,
  });

  ///Details
  ///@param network_id
  Future<chopper.Response<NetworkNetworkIdGet$Response>> networkNetworkIdGet({
    required int? networkId,
  }) {
    generatedMapping.putIfAbsent(
      NetworkNetworkIdGet$Response,
      () => NetworkNetworkIdGet$Response.fromJsonFactory,
    );

    return _networkNetworkIdGet(networkId: networkId);
  }

  ///Details
  ///@param network_id
  @GET(path: '/network/{network_id}')
  Future<chopper.Response<NetworkNetworkIdGet$Response>> _networkNetworkIdGet({
    @Path('network_id') required int? networkId,
  });

  ///Alternative Names
  ///@param network_id
  Future<chopper.Response<NetworkNetworkIdAlternativeNamesGet$Response>>
  networkNetworkIdAlternativeNamesGet({required int? networkId}) {
    generatedMapping.putIfAbsent(
      NetworkNetworkIdAlternativeNamesGet$Response,
      () => NetworkNetworkIdAlternativeNamesGet$Response.fromJsonFactory,
    );

    return _networkNetworkIdAlternativeNamesGet(networkId: networkId);
  }

  ///Alternative Names
  ///@param network_id
  @GET(path: '/network/{network_id}/alternative_names')
  Future<chopper.Response<NetworkNetworkIdAlternativeNamesGet$Response>>
  _networkNetworkIdAlternativeNamesGet({
    @Path('network_id') required int? networkId,
  });

  ///Images
  ///@param network_id
  Future<chopper.Response<NetworkNetworkIdImagesGet$Response>>
  networkNetworkIdImagesGet({required int? networkId}) {
    generatedMapping.putIfAbsent(
      NetworkNetworkIdImagesGet$Response,
      () => NetworkNetworkIdImagesGet$Response.fromJsonFactory,
    );

    return _networkNetworkIdImagesGet(networkId: networkId);
  }

  ///Images
  ///@param network_id
  @GET(path: '/network/{network_id}/images')
  Future<chopper.Response<NetworkNetworkIdImagesGet$Response>>
  _networkNetworkIdImagesGet({@Path('network_id') required int? networkId});

  ///Popular
  ///@param language
  ///@param page
  Future<chopper.Response<PersonPopularGet$Response>> personPopularGet({
    String? language,
    int? page,
  }) {
    generatedMapping.putIfAbsent(
      PersonPopularGet$Response,
      () => PersonPopularGet$Response.fromJsonFactory,
    );

    return _personPopularGet(language: language, page: page);
  }

  ///Popular
  ///@param language
  ///@param page
  @GET(path: '/person/popular')
  Future<chopper.Response<PersonPopularGet$Response>> _personPopularGet({
    @Query('language') String? language,
    @Query('page') int? page,
  });

  ///Details
  ///@param person_id
  ///@param append_to_response comma separated list of endpoints within this namespace, 20 items max
  ///@param language
  Future<chopper.Response<PersonPersonIdGet$Response>> personPersonIdGet({
    required int? personId,
    String? appendToResponse,
    String? language,
  }) {
    generatedMapping.putIfAbsent(
      PersonPersonIdGet$Response,
      () => PersonPersonIdGet$Response.fromJsonFactory,
    );

    return _personPersonIdGet(
      personId: personId,
      appendToResponse: appendToResponse,
      language: language,
    );
  }

  ///Details
  ///@param person_id
  ///@param append_to_response comma separated list of endpoints within this namespace, 20 items max
  ///@param language
  @GET(path: '/person/{person_id}')
  Future<chopper.Response<PersonPersonIdGet$Response>> _personPersonIdGet({
    @Path('person_id') required int? personId,
    @Query('append_to_response') String? appendToResponse,
    @Query('language') String? language,
  });

  ///Changes
  ///@param person_id
  ///@param end_date
  ///@param page
  ///@param start_date
  Future<chopper.Response<PersonPersonIdChangesGet$Response>>
  personPersonIdChangesGet({
    required int? personId,
    String? endDate,
    int? page,
    String? startDate,
  }) {
    generatedMapping.putIfAbsent(
      PersonPersonIdChangesGet$Response,
      () => PersonPersonIdChangesGet$Response.fromJsonFactory,
    );

    return _personPersonIdChangesGet(
      personId: personId,
      endDate: endDate,
      page: page,
      startDate: startDate,
    );
  }

  ///Changes
  ///@param person_id
  ///@param end_date
  ///@param page
  ///@param start_date
  @GET(path: '/person/{person_id}/changes')
  Future<chopper.Response<PersonPersonIdChangesGet$Response>>
  _personPersonIdChangesGet({
    @Path('person_id') required int? personId,
    @Query('end_date') String? endDate,
    @Query('page') int? page,
    @Query('start_date') String? startDate,
  });

  ///Combined Credits
  ///@param person_id
  ///@param language
  Future<chopper.Response<PersonPersonIdCombinedCreditsGet$Response>>
  personPersonIdCombinedCreditsGet({
    required String? personId,
    String? language,
  }) {
    generatedMapping.putIfAbsent(
      PersonPersonIdCombinedCreditsGet$Response,
      () => PersonPersonIdCombinedCreditsGet$Response.fromJsonFactory,
    );

    return _personPersonIdCombinedCreditsGet(
      personId: personId,
      language: language,
    );
  }

  ///Combined Credits
  ///@param person_id
  ///@param language
  @GET(path: '/person/{person_id}/combined_credits')
  Future<chopper.Response<PersonPersonIdCombinedCreditsGet$Response>>
  _personPersonIdCombinedCreditsGet({
    @Path('person_id') required String? personId,
    @Query('language') String? language,
  });

  ///External IDs
  ///@param person_id
  Future<chopper.Response<PersonPersonIdExternalIdsGet$Response>>
  personPersonIdExternalIdsGet({required int? personId}) {
    generatedMapping.putIfAbsent(
      PersonPersonIdExternalIdsGet$Response,
      () => PersonPersonIdExternalIdsGet$Response.fromJsonFactory,
    );

    return _personPersonIdExternalIdsGet(personId: personId);
  }

  ///External IDs
  ///@param person_id
  @GET(path: '/person/{person_id}/external_ids')
  Future<chopper.Response<PersonPersonIdExternalIdsGet$Response>>
  _personPersonIdExternalIdsGet({@Path('person_id') required int? personId});

  ///Images
  ///@param person_id
  Future<chopper.Response<PersonPersonIdImagesGet$Response>>
  personPersonIdImagesGet({required int? personId}) {
    generatedMapping.putIfAbsent(
      PersonPersonIdImagesGet$Response,
      () => PersonPersonIdImagesGet$Response.fromJsonFactory,
    );

    return _personPersonIdImagesGet(personId: personId);
  }

  ///Images
  ///@param person_id
  @GET(path: '/person/{person_id}/images')
  Future<chopper.Response<PersonPersonIdImagesGet$Response>>
  _personPersonIdImagesGet({@Path('person_id') required int? personId});

  ///Latest
  Future<chopper.Response<PersonLatestGet$Response>> personLatestGet() {
    generatedMapping.putIfAbsent(
      PersonLatestGet$Response,
      () => PersonLatestGet$Response.fromJsonFactory,
    );

    return _personLatestGet();
  }

  ///Latest
  @GET(path: '/person/latest')
  Future<chopper.Response<PersonLatestGet$Response>> _personLatestGet();

  ///Movie Credits
  ///@param person_id
  ///@param language
  Future<chopper.Response<PersonPersonIdMovieCreditsGet$Response>>
  personPersonIdMovieCreditsGet({required int? personId, String? language}) {
    generatedMapping.putIfAbsent(
      PersonPersonIdMovieCreditsGet$Response,
      () => PersonPersonIdMovieCreditsGet$Response.fromJsonFactory,
    );

    return _personPersonIdMovieCreditsGet(
      personId: personId,
      language: language,
    );
  }

  ///Movie Credits
  ///@param person_id
  ///@param language
  @GET(path: '/person/{person_id}/movie_credits')
  Future<chopper.Response<PersonPersonIdMovieCreditsGet$Response>>
  _personPersonIdMovieCreditsGet({
    @Path('person_id') required int? personId,
    @Query('language') String? language,
  });

  ///TV Credits
  ///@param person_id
  ///@param language
  Future<chopper.Response<PersonPersonIdTvCreditsGet$Response>>
  personPersonIdTvCreditsGet({required int? personId, String? language}) {
    generatedMapping.putIfAbsent(
      PersonPersonIdTvCreditsGet$Response,
      () => PersonPersonIdTvCreditsGet$Response.fromJsonFactory,
    );

    return _personPersonIdTvCreditsGet(personId: personId, language: language);
  }

  ///TV Credits
  ///@param person_id
  ///@param language
  @GET(path: '/person/{person_id}/tv_credits')
  Future<chopper.Response<PersonPersonIdTvCreditsGet$Response>>
  _personPersonIdTvCreditsGet({
    @Path('person_id') required int? personId,
    @Query('language') String? language,
  });

  ///Tagged Images
  ///@param person_id
  ///@param page
  Future<chopper.Response<PersonPersonIdTaggedImagesGet$Response>>
  personPersonIdTaggedImagesGet({required int? personId, int? page}) {
    generatedMapping.putIfAbsent(
      PersonPersonIdTaggedImagesGet$Response,
      () => PersonPersonIdTaggedImagesGet$Response.fromJsonFactory,
    );

    return _personPersonIdTaggedImagesGet(personId: personId, page: page);
  }

  ///Tagged Images
  ///@param person_id
  ///@param page
  @GET(path: '/person/{person_id}/tagged_images')
  Future<chopper.Response<PersonPersonIdTaggedImagesGet$Response>>
  _personPersonIdTaggedImagesGet({
    @Path('person_id') required int? personId,
    @Query('page') int? page,
  });

  ///Translations
  ///@param person_id
  Future<chopper.Response<PersonPersonIdTranslationsGet$Response>>
  personPersonIdTranslationsGet({required int? personId}) {
    generatedMapping.putIfAbsent(
      PersonPersonIdTranslationsGet$Response,
      () => PersonPersonIdTranslationsGet$Response.fromJsonFactory,
    );

    return _personPersonIdTranslationsGet(personId: personId);
  }

  ///Translations
  ///@param person_id
  @GET(path: '/person/{person_id}/translations')
  Future<chopper.Response<PersonPersonIdTranslationsGet$Response>>
  _personPersonIdTranslationsGet({@Path('person_id') required int? personId});

  ///Details
  ///@param review_id
  Future<chopper.Response<ReviewReviewIdGet$Response>> reviewReviewIdGet({
    required String? reviewId,
  }) {
    generatedMapping.putIfAbsent(
      ReviewReviewIdGet$Response,
      () => ReviewReviewIdGet$Response.fromJsonFactory,
    );

    return _reviewReviewIdGet(reviewId: reviewId);
  }

  ///Details
  ///@param review_id
  @GET(path: '/review/{review_id}')
  Future<chopper.Response<ReviewReviewIdGet$Response>> _reviewReviewIdGet({
    @Path('review_id') required String? reviewId,
  });

  ///Collection
  ///@param query
  ///@param include_adult
  ///@param language
  ///@param page
  ///@param region
  Future<chopper.Response<SearchCollectionGet$Response>> searchCollectionGet({
    required String? query,
    bool? includeAdult,
    String? language,
    int? page,
    String? region,
  }) {
    generatedMapping.putIfAbsent(
      SearchCollectionGet$Response,
      () => SearchCollectionGet$Response.fromJsonFactory,
    );

    return _searchCollectionGet(
      query: query,
      includeAdult: includeAdult,
      language: language,
      page: page,
      region: region,
    );
  }

  ///Collection
  ///@param query
  ///@param include_adult
  ///@param language
  ///@param page
  ///@param region
  @GET(path: '/search/collection')
  Future<chopper.Response<SearchCollectionGet$Response>> _searchCollectionGet({
    @Query('query') required String? query,
    @Query('include_adult') bool? includeAdult,
    @Query('language') String? language,
    @Query('page') int? page,
    @Query('region') String? region,
  });

  ///Company
  ///@param query
  ///@param page
  Future<chopper.Response<SearchCompanyGet$Response>> searchCompanyGet({
    required String? query,
    int? page,
  }) {
    generatedMapping.putIfAbsent(
      SearchCompanyGet$Response,
      () => SearchCompanyGet$Response.fromJsonFactory,
    );

    return _searchCompanyGet(query: query, page: page);
  }

  ///Company
  ///@param query
  ///@param page
  @GET(path: '/search/company')
  Future<chopper.Response<SearchCompanyGet$Response>> _searchCompanyGet({
    @Query('query') required String? query,
    @Query('page') int? page,
  });

  ///Keyword
  ///@param query
  ///@param page
  Future<chopper.Response<SearchKeywordGet$Response>> searchKeywordGet({
    required String? query,
    int? page,
  }) {
    generatedMapping.putIfAbsent(
      SearchKeywordGet$Response,
      () => SearchKeywordGet$Response.fromJsonFactory,
    );

    return _searchKeywordGet(query: query, page: page);
  }

  ///Keyword
  ///@param query
  ///@param page
  @GET(path: '/search/keyword')
  Future<chopper.Response<SearchKeywordGet$Response>> _searchKeywordGet({
    @Query('query') required String? query,
    @Query('page') int? page,
  });

  ///Movie
  ///@param query
  ///@param include_adult
  ///@param language
  ///@param primary_release_year
  ///@param page
  ///@param region
  ///@param year
  Future<chopper.Response<SearchMovieGet$Response>> searchMovieGet({
    required String? query,
    bool? includeAdult,
    String? language,
    String? primaryReleaseYear,
    int? page,
    String? region,
    String? year,
  }) {
    generatedMapping.putIfAbsent(
      SearchMovieGet$Response,
      () => SearchMovieGet$Response.fromJsonFactory,
    );

    return _searchMovieGet(
      query: query,
      includeAdult: includeAdult,
      language: language,
      primaryReleaseYear: primaryReleaseYear,
      page: page,
      region: region,
      year: year,
    );
  }

  ///Movie
  ///@param query
  ///@param include_adult
  ///@param language
  ///@param primary_release_year
  ///@param page
  ///@param region
  ///@param year
  @GET(path: '/search/movie')
  Future<chopper.Response<SearchMovieGet$Response>> _searchMovieGet({
    @Query('query') required String? query,
    @Query('include_adult') bool? includeAdult,
    @Query('language') String? language,
    @Query('primary_release_year') String? primaryReleaseYear,
    @Query('page') int? page,
    @Query('region') String? region,
    @Query('year') String? year,
  });

  ///Multi
  ///@param query
  ///@param include_adult
  ///@param language
  ///@param page
  Future<chopper.Response<SearchMultiGet$Response>> searchMultiGet({
    required String? query,
    bool? includeAdult,
    String? language,
    int? page,
  }) {
    generatedMapping.putIfAbsent(
      SearchMultiGet$Response,
      () => SearchMultiGet$Response.fromJsonFactory,
    );

    return _searchMultiGet(
      query: query,
      includeAdult: includeAdult,
      language: language,
      page: page,
    );
  }

  ///Multi
  ///@param query
  ///@param include_adult
  ///@param language
  ///@param page
  @GET(path: '/search/multi')
  Future<chopper.Response<SearchMultiGet$Response>> _searchMultiGet({
    @Query('query') required String? query,
    @Query('include_adult') bool? includeAdult,
    @Query('language') String? language,
    @Query('page') int? page,
  });

  ///Person
  ///@param query
  ///@param include_adult
  ///@param language
  ///@param page
  Future<chopper.Response<SearchPersonGet$Response>> searchPersonGet({
    required String? query,
    bool? includeAdult,
    String? language,
    int? page,
  }) {
    generatedMapping.putIfAbsent(
      SearchPersonGet$Response,
      () => SearchPersonGet$Response.fromJsonFactory,
    );

    return _searchPersonGet(
      query: query,
      includeAdult: includeAdult,
      language: language,
      page: page,
    );
  }

  ///Person
  ///@param query
  ///@param include_adult
  ///@param language
  ///@param page
  @GET(path: '/search/person')
  Future<chopper.Response<SearchPersonGet$Response>> _searchPersonGet({
    @Query('query') required String? query,
    @Query('include_adult') bool? includeAdult,
    @Query('language') String? language,
    @Query('page') int? page,
  });

  ///TV
  ///@param query
  ///@param first_air_date_year Search only the first air date. Valid values are: 1000..9999
  ///@param include_adult
  ///@param language
  ///@param page
  ///@param year Search the first air date and all episode air dates. Valid values are: 1000..9999
  Future<chopper.Response<SearchTvGet$Response>> searchTvGet({
    required String? query,
    int? firstAirDateYear,
    bool? includeAdult,
    String? language,
    int? page,
    int? year,
  }) {
    generatedMapping.putIfAbsent(
      SearchTvGet$Response,
      () => SearchTvGet$Response.fromJsonFactory,
    );

    return _searchTvGet(
      query: query,
      firstAirDateYear: firstAirDateYear,
      includeAdult: includeAdult,
      language: language,
      page: page,
      year: year,
    );
  }

  ///TV
  ///@param query
  ///@param first_air_date_year Search only the first air date. Valid values are: 1000..9999
  ///@param include_adult
  ///@param language
  ///@param page
  ///@param year Search the first air date and all episode air dates. Valid values are: 1000..9999
  @GET(path: '/search/tv')
  Future<chopper.Response<SearchTvGet$Response>> _searchTvGet({
    @Query('query') required String? query,
    @Query('first_air_date_year') int? firstAirDateYear,
    @Query('include_adult') bool? includeAdult,
    @Query('language') String? language,
    @Query('page') int? page,
    @Query('year') int? year,
  });

  ///All
  ///@param time_window
  ///@param language `ISO-639-1`-`ISO-3166-1` code
  Future<chopper.Response<TrendingAllTimeWindowGet$Response>>
  trendingAllTimeWindowGet({
    required enums.TrendingAllTimeWindowGetTimeWindow? timeWindow,
    String? language,
  }) {
    generatedMapping.putIfAbsent(
      TrendingAllTimeWindowGet$Response,
      () => TrendingAllTimeWindowGet$Response.fromJsonFactory,
    );

    return _trendingAllTimeWindowGet(
      timeWindow: timeWindow?.value?.toString(),
      language: language,
    );
  }

  ///All
  ///@param time_window
  ///@param language `ISO-639-1`-`ISO-3166-1` code
  @GET(path: '/trending/all/{time_window}')
  Future<chopper.Response<TrendingAllTimeWindowGet$Response>>
  _trendingAllTimeWindowGet({
    @Path('time_window') required String? timeWindow,
    @Query('language') String? language,
  });

  ///Movies
  ///@param time_window
  ///@param language `ISO-639-1`-`ISO-3166-1` code
  Future<chopper.Response<TrendingMovieTimeWindowGet$Response>>
  trendingMovieTimeWindowGet({
    required enums.TrendingMovieTimeWindowGetTimeWindow? timeWindow,
    String? language,
  }) {
    generatedMapping.putIfAbsent(
      TrendingMovieTimeWindowGet$Response,
      () => TrendingMovieTimeWindowGet$Response.fromJsonFactory,
    );

    return _trendingMovieTimeWindowGet(
      timeWindow: timeWindow?.value?.toString(),
      language: language,
    );
  }

  ///Movies
  ///@param time_window
  ///@param language `ISO-639-1`-`ISO-3166-1` code
  @GET(path: '/trending/movie/{time_window}')
  Future<chopper.Response<TrendingMovieTimeWindowGet$Response>>
  _trendingMovieTimeWindowGet({
    @Path('time_window') required String? timeWindow,
    @Query('language') String? language,
  });

  ///People
  ///@param time_window
  ///@param language `ISO-639-1`-`ISO-3166-1` code
  Future<chopper.Response<TrendingPersonTimeWindowGet$Response>>
  trendingPersonTimeWindowGet({
    required enums.TrendingPersonTimeWindowGetTimeWindow? timeWindow,
    String? language,
  }) {
    generatedMapping.putIfAbsent(
      TrendingPersonTimeWindowGet$Response,
      () => TrendingPersonTimeWindowGet$Response.fromJsonFactory,
    );

    return _trendingPersonTimeWindowGet(
      timeWindow: timeWindow?.value?.toString(),
      language: language,
    );
  }

  ///People
  ///@param time_window
  ///@param language `ISO-639-1`-`ISO-3166-1` code
  @GET(path: '/trending/person/{time_window}')
  Future<chopper.Response<TrendingPersonTimeWindowGet$Response>>
  _trendingPersonTimeWindowGet({
    @Path('time_window') required String? timeWindow,
    @Query('language') String? language,
  });

  ///TV
  ///@param time_window
  ///@param language `ISO-639-1`-`ISO-3166-1` code
  Future<chopper.Response<TrendingTvTimeWindowGet$Response>>
  trendingTvTimeWindowGet({
    required enums.TrendingTvTimeWindowGetTimeWindow? timeWindow,
    String? language,
  }) {
    generatedMapping.putIfAbsent(
      TrendingTvTimeWindowGet$Response,
      () => TrendingTvTimeWindowGet$Response.fromJsonFactory,
    );

    return _trendingTvTimeWindowGet(
      timeWindow: timeWindow?.value?.toString(),
      language: language,
    );
  }

  ///TV
  ///@param time_window
  ///@param language `ISO-639-1`-`ISO-3166-1` code
  @GET(path: '/trending/tv/{time_window}')
  Future<chopper.Response<TrendingTvTimeWindowGet$Response>>
  _trendingTvTimeWindowGet({
    @Path('time_window') required String? timeWindow,
    @Query('language') String? language,
  });

  ///Airing Today
  ///@param language
  ///@param page
  ///@param timezone
  Future<chopper.Response<TvAiringTodayGet$Response>> tvAiringTodayGet({
    String? language,
    int? page,
    String? timezone,
  }) {
    generatedMapping.putIfAbsent(
      TvAiringTodayGet$Response,
      () => TvAiringTodayGet$Response.fromJsonFactory,
    );

    return _tvAiringTodayGet(
      language: language,
      page: page,
      timezone: timezone,
    );
  }

  ///Airing Today
  ///@param language
  ///@param page
  ///@param timezone
  @GET(path: '/tv/airing_today')
  Future<chopper.Response<TvAiringTodayGet$Response>> _tvAiringTodayGet({
    @Query('language') String? language,
    @Query('page') int? page,
    @Query('timezone') String? timezone,
  });

  ///On The Air
  ///@param language
  ///@param page
  ///@param timezone
  Future<chopper.Response<TvOnTheAirGet$Response>> tvOnTheAirGet({
    String? language,
    int? page,
    String? timezone,
  }) {
    generatedMapping.putIfAbsent(
      TvOnTheAirGet$Response,
      () => TvOnTheAirGet$Response.fromJsonFactory,
    );

    return _tvOnTheAirGet(language: language, page: page, timezone: timezone);
  }

  ///On The Air
  ///@param language
  ///@param page
  ///@param timezone
  @GET(path: '/tv/on_the_air')
  Future<chopper.Response<TvOnTheAirGet$Response>> _tvOnTheAirGet({
    @Query('language') String? language,
    @Query('page') int? page,
    @Query('timezone') String? timezone,
  });

  ///Popular
  ///@param language
  ///@param page
  Future<chopper.Response<TvPopularGet$Response>> tvPopularGet({
    String? language,
    int? page,
  }) {
    generatedMapping.putIfAbsent(
      TvPopularGet$Response,
      () => TvPopularGet$Response.fromJsonFactory,
    );

    return _tvPopularGet(language: language, page: page);
  }

  ///Popular
  ///@param language
  ///@param page
  @GET(path: '/tv/popular')
  Future<chopper.Response<TvPopularGet$Response>> _tvPopularGet({
    @Query('language') String? language,
    @Query('page') int? page,
  });

  ///Top Rated
  ///@param language
  ///@param page
  Future<chopper.Response<TvTopRatedGet$Response>> tvTopRatedGet({
    String? language,
    int? page,
  }) {
    generatedMapping.putIfAbsent(
      TvTopRatedGet$Response,
      () => TvTopRatedGet$Response.fromJsonFactory,
    );

    return _tvTopRatedGet(language: language, page: page);
  }

  ///Top Rated
  ///@param language
  ///@param page
  @GET(path: '/tv/top_rated')
  Future<chopper.Response<TvTopRatedGet$Response>> _tvTopRatedGet({
    @Query('language') String? language,
    @Query('page') int? page,
  });

  ///Details
  ///@param series_id
  ///@param append_to_response comma separated list of endpoints within this namespace, 20 items max
  ///@param language
  Future<chopper.Response<TvSeriesIdGet$Response>> tvSeriesIdGet({
    required int? seriesId,
    String? appendToResponse,
    String? language,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdGet$Response,
      () => TvSeriesIdGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdGet(
      seriesId: seriesId,
      appendToResponse: appendToResponse,
      language: language,
    );
  }

  ///Details
  ///@param series_id
  ///@param append_to_response comma separated list of endpoints within this namespace, 20 items max
  ///@param language
  @GET(path: '/tv/{series_id}')
  Future<chopper.Response<TvSeriesIdGet$Response>> _tvSeriesIdGet({
    @Path('series_id') required int? seriesId,
    @Query('append_to_response') String? appendToResponse,
    @Query('language') String? language,
  });

  ///Account States
  ///@param series_id
  ///@param session_id
  ///@param guest_session_id
  Future<chopper.Response<TvSeriesIdAccountStatesGet$Response>>
  tvSeriesIdAccountStatesGet({
    required int? seriesId,
    String? sessionId,
    String? guestSessionId,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdAccountStatesGet$Response,
      () => TvSeriesIdAccountStatesGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdAccountStatesGet(
      seriesId: seriesId,
      sessionId: sessionId,
      guestSessionId: guestSessionId,
    );
  }

  ///Account States
  ///@param series_id
  ///@param session_id
  ///@param guest_session_id
  @GET(path: '/tv/{series_id}/account_states')
  Future<chopper.Response<TvSeriesIdAccountStatesGet$Response>>
  _tvSeriesIdAccountStatesGet({
    @Path('series_id') required int? seriesId,
    @Query('session_id') String? sessionId,
    @Query('guest_session_id') String? guestSessionId,
  });

  ///Aggregate Credits
  ///@param series_id
  ///@param language
  Future<chopper.Response<TvSeriesIdAggregateCreditsGet$Response>>
  tvSeriesIdAggregateCreditsGet({required int? seriesId, String? language}) {
    generatedMapping.putIfAbsent(
      TvSeriesIdAggregateCreditsGet$Response,
      () => TvSeriesIdAggregateCreditsGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdAggregateCreditsGet(
      seriesId: seriesId,
      language: language,
    );
  }

  ///Aggregate Credits
  ///@param series_id
  ///@param language
  @GET(path: '/tv/{series_id}/aggregate_credits')
  Future<chopper.Response<TvSeriesIdAggregateCreditsGet$Response>>
  _tvSeriesIdAggregateCreditsGet({
    @Path('series_id') required int? seriesId,
    @Query('language') String? language,
  });

  ///Alternative Titles
  ///@param series_id
  Future<chopper.Response<TvSeriesIdAlternativeTitlesGet$Response>>
  tvSeriesIdAlternativeTitlesGet({required int? seriesId}) {
    generatedMapping.putIfAbsent(
      TvSeriesIdAlternativeTitlesGet$Response,
      () => TvSeriesIdAlternativeTitlesGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdAlternativeTitlesGet(seriesId: seriesId);
  }

  ///Alternative Titles
  ///@param series_id
  @GET(path: '/tv/{series_id}/alternative_titles')
  Future<chopper.Response<TvSeriesIdAlternativeTitlesGet$Response>>
  _tvSeriesIdAlternativeTitlesGet({@Path('series_id') required int? seriesId});

  ///Changes
  ///@param series_id
  ///@param end_date
  ///@param page
  ///@param start_date
  Future<chopper.Response<TvSeriesIdChangesGet$Response>> tvSeriesIdChangesGet({
    required int? seriesId,
    String? endDate,
    int? page,
    String? startDate,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdChangesGet$Response,
      () => TvSeriesIdChangesGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdChangesGet(
      seriesId: seriesId,
      endDate: endDate,
      page: page,
      startDate: startDate,
    );
  }

  ///Changes
  ///@param series_id
  ///@param end_date
  ///@param page
  ///@param start_date
  @GET(path: '/tv/{series_id}/changes')
  Future<chopper.Response<TvSeriesIdChangesGet$Response>>
  _tvSeriesIdChangesGet({
    @Path('series_id') required int? seriesId,
    @Query('end_date') String? endDate,
    @Query('page') int? page,
    @Query('start_date') String? startDate,
  });

  ///Content Ratings
  ///@param series_id
  Future<chopper.Response<TvSeriesIdContentRatingsGet$Response>>
  tvSeriesIdContentRatingsGet({required int? seriesId}) {
    generatedMapping.putIfAbsent(
      TvSeriesIdContentRatingsGet$Response,
      () => TvSeriesIdContentRatingsGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdContentRatingsGet(seriesId: seriesId);
  }

  ///Content Ratings
  ///@param series_id
  @GET(path: '/tv/{series_id}/content_ratings')
  Future<chopper.Response<TvSeriesIdContentRatingsGet$Response>>
  _tvSeriesIdContentRatingsGet({@Path('series_id') required int? seriesId});

  ///Credits
  ///@param series_id
  ///@param language
  Future<chopper.Response<TvSeriesIdCreditsGet$Response>> tvSeriesIdCreditsGet({
    required int? seriesId,
    String? language,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdCreditsGet$Response,
      () => TvSeriesIdCreditsGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdCreditsGet(seriesId: seriesId, language: language);
  }

  ///Credits
  ///@param series_id
  ///@param language
  @GET(path: '/tv/{series_id}/credits')
  Future<chopper.Response<TvSeriesIdCreditsGet$Response>>
  _tvSeriesIdCreditsGet({
    @Path('series_id') required int? seriesId,
    @Query('language') String? language,
  });

  ///Episode Groups
  ///@param series_id
  Future<chopper.Response<TvSeriesIdEpisodeGroupsGet$Response>>
  tvSeriesIdEpisodeGroupsGet({required int? seriesId}) {
    generatedMapping.putIfAbsent(
      TvSeriesIdEpisodeGroupsGet$Response,
      () => TvSeriesIdEpisodeGroupsGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdEpisodeGroupsGet(seriesId: seriesId);
  }

  ///Episode Groups
  ///@param series_id
  @GET(path: '/tv/{series_id}/episode_groups')
  Future<chopper.Response<TvSeriesIdEpisodeGroupsGet$Response>>
  _tvSeriesIdEpisodeGroupsGet({@Path('series_id') required int? seriesId});

  ///External IDs
  ///@param series_id
  Future<chopper.Response<TvSeriesIdExternalIdsGet$Response>>
  tvSeriesIdExternalIdsGet({required int? seriesId}) {
    generatedMapping.putIfAbsent(
      TvSeriesIdExternalIdsGet$Response,
      () => TvSeriesIdExternalIdsGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdExternalIdsGet(seriesId: seriesId);
  }

  ///External IDs
  ///@param series_id
  @GET(path: '/tv/{series_id}/external_ids')
  Future<chopper.Response<TvSeriesIdExternalIdsGet$Response>>
  _tvSeriesIdExternalIdsGet({@Path('series_id') required int? seriesId});

  ///Images
  ///@param series_id
  ///@param include_image_language specify a comma separated list of ISO-639-1 values to query, for example: `en-US,null`
  ///@param language
  Future<chopper.Response<TvSeriesIdImagesGet$Response>> tvSeriesIdImagesGet({
    required int? seriesId,
    String? includeImageLanguage,
    String? language,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdImagesGet$Response,
      () => TvSeriesIdImagesGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdImagesGet(
      seriesId: seriesId,
      includeImageLanguage: includeImageLanguage,
      language: language,
    );
  }

  ///Images
  ///@param series_id
  ///@param include_image_language specify a comma separated list of ISO-639-1 values to query, for example: `en-US,null`
  ///@param language
  @GET(path: '/tv/{series_id}/images')
  Future<chopper.Response<TvSeriesIdImagesGet$Response>> _tvSeriesIdImagesGet({
    @Path('series_id') required int? seriesId,
    @Query('include_image_language') String? includeImageLanguage,
    @Query('language') String? language,
  });

  ///Keywords
  ///@param series_id
  Future<chopper.Response<TvSeriesIdKeywordsGet$Response>>
  tvSeriesIdKeywordsGet({required int? seriesId}) {
    generatedMapping.putIfAbsent(
      TvSeriesIdKeywordsGet$Response,
      () => TvSeriesIdKeywordsGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdKeywordsGet(seriesId: seriesId);
  }

  ///Keywords
  ///@param series_id
  @GET(path: '/tv/{series_id}/keywords')
  Future<chopper.Response<TvSeriesIdKeywordsGet$Response>>
  _tvSeriesIdKeywordsGet({@Path('series_id') required int? seriesId});

  ///Latest
  Future<chopper.Response<TvLatestGet$Response>> tvLatestGet() {
    generatedMapping.putIfAbsent(
      TvLatestGet$Response,
      () => TvLatestGet$Response.fromJsonFactory,
    );

    return _tvLatestGet();
  }

  ///Latest
  @GET(path: '/tv/latest')
  Future<chopper.Response<TvLatestGet$Response>> _tvLatestGet();

  ///Lists
  ///@param series_id
  ///@param language
  ///@param page
  Future<chopper.Response<TvSeriesIdListsGet$Response>> tvSeriesIdListsGet({
    required int? seriesId,
    String? language,
    int? page,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdListsGet$Response,
      () => TvSeriesIdListsGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdListsGet(
      seriesId: seriesId,
      language: language,
      page: page,
    );
  }

  ///Lists
  ///@param series_id
  ///@param language
  ///@param page
  @GET(path: '/tv/{series_id}/lists')
  Future<chopper.Response<TvSeriesIdListsGet$Response>> _tvSeriesIdListsGet({
    @Path('series_id') required int? seriesId,
    @Query('language') String? language,
    @Query('page') int? page,
  });

  ///Recommendations
  ///@param series_id
  ///@param language
  ///@param page
  Future<chopper.Response<TvSeriesIdRecommendationsGet$Response>>
  tvSeriesIdRecommendationsGet({
    required int? seriesId,
    String? language,
    int? page,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdRecommendationsGet$Response,
      () => TvSeriesIdRecommendationsGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdRecommendationsGet(
      seriesId: seriesId,
      language: language,
      page: page,
    );
  }

  ///Recommendations
  ///@param series_id
  ///@param language
  ///@param page
  @GET(path: '/tv/{series_id}/recommendations')
  Future<chopper.Response<TvSeriesIdRecommendationsGet$Response>>
  _tvSeriesIdRecommendationsGet({
    @Path('series_id') required int? seriesId,
    @Query('language') String? language,
    @Query('page') int? page,
  });

  ///Reviews
  ///@param series_id
  ///@param language
  ///@param page
  Future<chopper.Response<TvSeriesIdReviewsGet$Response>> tvSeriesIdReviewsGet({
    required int? seriesId,
    String? language,
    int? page,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdReviewsGet$Response,
      () => TvSeriesIdReviewsGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdReviewsGet(
      seriesId: seriesId,
      language: language,
      page: page,
    );
  }

  ///Reviews
  ///@param series_id
  ///@param language
  ///@param page
  @GET(path: '/tv/{series_id}/reviews')
  Future<chopper.Response<TvSeriesIdReviewsGet$Response>>
  _tvSeriesIdReviewsGet({
    @Path('series_id') required int? seriesId,
    @Query('language') String? language,
    @Query('page') int? page,
  });

  ///Screened Theatrically
  ///@param series_id
  Future<chopper.Response<TvSeriesIdScreenedTheatricallyGet$Response>>
  tvSeriesIdScreenedTheatricallyGet({required int? seriesId}) {
    generatedMapping.putIfAbsent(
      TvSeriesIdScreenedTheatricallyGet$Response,
      () => TvSeriesIdScreenedTheatricallyGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdScreenedTheatricallyGet(seriesId: seriesId);
  }

  ///Screened Theatrically
  ///@param series_id
  @GET(path: '/tv/{series_id}/screened_theatrically')
  Future<chopper.Response<TvSeriesIdScreenedTheatricallyGet$Response>>
  _tvSeriesIdScreenedTheatricallyGet({
    @Path('series_id') required int? seriesId,
  });

  ///Similar
  ///@param series_id
  ///@param language
  ///@param page
  Future<chopper.Response<TvSeriesIdSimilarGet$Response>> tvSeriesIdSimilarGet({
    required String? seriesId,
    String? language,
    int? page,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdSimilarGet$Response,
      () => TvSeriesIdSimilarGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdSimilarGet(
      seriesId: seriesId,
      language: language,
      page: page,
    );
  }

  ///Similar
  ///@param series_id
  ///@param language
  ///@param page
  @GET(path: '/tv/{series_id}/similar')
  Future<chopper.Response<TvSeriesIdSimilarGet$Response>>
  _tvSeriesIdSimilarGet({
    @Path('series_id') required String? seriesId,
    @Query('language') String? language,
    @Query('page') int? page,
  });

  ///Translations
  ///@param series_id
  Future<chopper.Response<TvSeriesIdTranslationsGet$Response>>
  tvSeriesIdTranslationsGet({required int? seriesId}) {
    generatedMapping.putIfAbsent(
      TvSeriesIdTranslationsGet$Response,
      () => TvSeriesIdTranslationsGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdTranslationsGet(seriesId: seriesId);
  }

  ///Translations
  ///@param series_id
  @GET(path: '/tv/{series_id}/translations')
  Future<chopper.Response<TvSeriesIdTranslationsGet$Response>>
  _tvSeriesIdTranslationsGet({@Path('series_id') required int? seriesId});

  ///Videos
  ///@param series_id
  ///@param include_video_language filter the list results by language, supports more than one value by using a comma
  ///@param language
  Future<chopper.Response<TvSeriesIdVideosGet$Response>> tvSeriesIdVideosGet({
    required int? seriesId,
    String? includeVideoLanguage,
    String? language,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdVideosGet$Response,
      () => TvSeriesIdVideosGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdVideosGet(
      seriesId: seriesId,
      includeVideoLanguage: includeVideoLanguage,
      language: language,
    );
  }

  ///Videos
  ///@param series_id
  ///@param include_video_language filter the list results by language, supports more than one value by using a comma
  ///@param language
  @GET(path: '/tv/{series_id}/videos')
  Future<chopper.Response<TvSeriesIdVideosGet$Response>> _tvSeriesIdVideosGet({
    @Path('series_id') required int? seriesId,
    @Query('include_video_language') String? includeVideoLanguage,
    @Query('language') String? language,
  });

  ///Watch Providers
  ///@param series_id
  Future<chopper.Response<TvSeriesIdWatchProvidersGet$Response>>
  tvSeriesIdWatchProvidersGet({required int? seriesId}) {
    generatedMapping.putIfAbsent(
      TvSeriesIdWatchProvidersGet$Response,
      () => TvSeriesIdWatchProvidersGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdWatchProvidersGet(seriesId: seriesId);
  }

  ///Watch Providers
  ///@param series_id
  @GET(path: '/tv/{series_id}/watch/providers')
  Future<chopper.Response<TvSeriesIdWatchProvidersGet$Response>>
  _tvSeriesIdWatchProvidersGet({@Path('series_id') required int? seriesId});

  ///Add Rating
  ///@param series_id
  ///@param guest_session_id
  ///@param session_id
  ///@param Content-Type
  Future<chopper.Response<TvSeriesIdRatingPost$Response>> tvSeriesIdRatingPost({
    required int? seriesId,
    String? guestSessionId,
    String? sessionId,
    String? contentType,
    required TvSeriesIdRatingPost$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdRatingPost$Response,
      () => TvSeriesIdRatingPost$Response.fromJsonFactory,
    );

    return _tvSeriesIdRatingPost(
      seriesId: seriesId,
      guestSessionId: guestSessionId,
      sessionId: sessionId,
      contentType: contentType?.toString(),
      body: body,
    );
  }

  ///Add Rating
  ///@param series_id
  ///@param guest_session_id
  ///@param session_id
  ///@param Content-Type
  @POST(path: '/tv/{series_id}/rating', optionalBody: true)
  Future<chopper.Response<TvSeriesIdRatingPost$Response>>
  _tvSeriesIdRatingPost({
    @Path('series_id') required int? seriesId,
    @Query('guest_session_id') String? guestSessionId,
    @Query('session_id') String? sessionId,
    @Header('Content-Type') String? contentType,
    @Body() required TvSeriesIdRatingPost$RequestBody? body,
  });

  ///Delete Rating
  ///@param series_id
  ///@param Content-Type
  ///@param guest_session_id
  ///@param session_id
  Future<chopper.Response<TvSeriesIdRatingDelete$Response>>
  tvSeriesIdRatingDelete({
    required int? seriesId,
    String? contentType,
    String? guestSessionId,
    String? sessionId,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdRatingDelete$Response,
      () => TvSeriesIdRatingDelete$Response.fromJsonFactory,
    );

    return _tvSeriesIdRatingDelete(
      seriesId: seriesId,
      contentType: contentType?.toString(),
      guestSessionId: guestSessionId,
      sessionId: sessionId,
    );
  }

  ///Delete Rating
  ///@param series_id
  ///@param Content-Type
  ///@param guest_session_id
  ///@param session_id
  @DELETE(path: '/tv/{series_id}/rating')
  Future<chopper.Response<TvSeriesIdRatingDelete$Response>>
  _tvSeriesIdRatingDelete({
    @Path('series_id') required int? seriesId,
    @Header('Content-Type') String? contentType,
    @Query('guest_session_id') String? guestSessionId,
    @Query('session_id') String? sessionId,
  });

  ///Details
  ///@param series_id
  ///@param season_number
  ///@param append_to_response comma separated list of endpoints within this namespace, 20 items max
  ///@param language
  Future<chopper.Response<TvSeriesIdSeasonSeasonNumberGet$Response>>
  tvSeriesIdSeasonSeasonNumberGet({
    required int? seriesId,
    required int? seasonNumber,
    String? appendToResponse,
    String? language,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdSeasonSeasonNumberGet$Response,
      () => TvSeriesIdSeasonSeasonNumberGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdSeasonSeasonNumberGet(
      seriesId: seriesId,
      seasonNumber: seasonNumber,
      appendToResponse: appendToResponse,
      language: language,
    );
  }

  ///Details
  ///@param series_id
  ///@param season_number
  ///@param append_to_response comma separated list of endpoints within this namespace, 20 items max
  ///@param language
  @GET(path: '/tv/{series_id}/season/{season_number}')
  Future<chopper.Response<TvSeriesIdSeasonSeasonNumberGet$Response>>
  _tvSeriesIdSeasonSeasonNumberGet({
    @Path('series_id') required int? seriesId,
    @Path('season_number') required int? seasonNumber,
    @Query('append_to_response') String? appendToResponse,
    @Query('language') String? language,
  });

  ///Account States
  ///@param series_id
  ///@param session_id
  ///@param guest_session_id
  ///@param season_number
  Future<
    chopper.Response<TvSeriesIdSeasonSeasonNumberAccountStatesGet$Response>
  >
  tvSeriesIdSeasonSeasonNumberAccountStatesGet({
    required int? seriesId,
    String? sessionId,
    String? guestSessionId,
    required int? seasonNumber,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdSeasonSeasonNumberAccountStatesGet$Response,
      () =>
          TvSeriesIdSeasonSeasonNumberAccountStatesGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdSeasonSeasonNumberAccountStatesGet(
      seriesId: seriesId,
      sessionId: sessionId,
      guestSessionId: guestSessionId,
      seasonNumber: seasonNumber,
    );
  }

  ///Account States
  ///@param series_id
  ///@param session_id
  ///@param guest_session_id
  ///@param season_number
  @GET(path: '/tv/{series_id}/season/{season_number}/account_states')
  Future<
    chopper.Response<TvSeriesIdSeasonSeasonNumberAccountStatesGet$Response>
  >
  _tvSeriesIdSeasonSeasonNumberAccountStatesGet({
    @Path('series_id') required int? seriesId,
    @Query('session_id') String? sessionId,
    @Query('guest_session_id') String? guestSessionId,
    @Path('season_number') required int? seasonNumber,
  });

  ///Aggregate Credits
  ///@param series_id
  ///@param language
  ///@param season_number
  Future<
    chopper.Response<TvSeriesIdSeasonSeasonNumberAggregateCreditsGet$Response>
  >
  tvSeriesIdSeasonSeasonNumberAggregateCreditsGet({
    required int? seriesId,
    String? language,
    required int? seasonNumber,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdSeasonSeasonNumberAggregateCreditsGet$Response,
      () => TvSeriesIdSeasonSeasonNumberAggregateCreditsGet$Response
          .fromJsonFactory,
    );

    return _tvSeriesIdSeasonSeasonNumberAggregateCreditsGet(
      seriesId: seriesId,
      language: language,
      seasonNumber: seasonNumber,
    );
  }

  ///Aggregate Credits
  ///@param series_id
  ///@param language
  ///@param season_number
  @GET(path: '/tv/{series_id}/season/{season_number}/aggregate_credits')
  Future<
    chopper.Response<TvSeriesIdSeasonSeasonNumberAggregateCreditsGet$Response>
  >
  _tvSeriesIdSeasonSeasonNumberAggregateCreditsGet({
    @Path('series_id') required int? seriesId,
    @Query('language') String? language,
    @Path('season_number') required int? seasonNumber,
  });

  ///Changes
  ///@param end_date
  ///@param page
  ///@param start_date
  ///@param season_id
  Future<chopper.Response<TvSeasonSeasonIdChangesGet$Response>>
  tvSeasonSeasonIdChangesGet({
    String? endDate,
    int? page,
    String? startDate,
    required int? seasonId,
  }) {
    generatedMapping.putIfAbsent(
      TvSeasonSeasonIdChangesGet$Response,
      () => TvSeasonSeasonIdChangesGet$Response.fromJsonFactory,
    );

    return _tvSeasonSeasonIdChangesGet(
      endDate: endDate,
      page: page,
      startDate: startDate,
      seasonId: seasonId,
    );
  }

  ///Changes
  ///@param end_date
  ///@param page
  ///@param start_date
  ///@param season_id
  @GET(path: '/tv/season/{season_id}/changes')
  Future<chopper.Response<TvSeasonSeasonIdChangesGet$Response>>
  _tvSeasonSeasonIdChangesGet({
    @Query('end_date') String? endDate,
    @Query('page') int? page,
    @Query('start_date') String? startDate,
    @Path('season_id') required int? seasonId,
  });

  ///Credits
  ///@param series_id
  ///@param season_number
  ///@param language
  Future<chopper.Response<TvSeriesIdSeasonSeasonNumberCreditsGet$Response>>
  tvSeriesIdSeasonSeasonNumberCreditsGet({
    required int? seriesId,
    required int? seasonNumber,
    String? language,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdSeasonSeasonNumberCreditsGet$Response,
      () => TvSeriesIdSeasonSeasonNumberCreditsGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdSeasonSeasonNumberCreditsGet(
      seriesId: seriesId,
      seasonNumber: seasonNumber,
      language: language,
    );
  }

  ///Credits
  ///@param series_id
  ///@param season_number
  ///@param language
  @GET(path: '/tv/{series_id}/season/{season_number}/credits')
  Future<chopper.Response<TvSeriesIdSeasonSeasonNumberCreditsGet$Response>>
  _tvSeriesIdSeasonSeasonNumberCreditsGet({
    @Path('series_id') required int? seriesId,
    @Path('season_number') required int? seasonNumber,
    @Query('language') String? language,
  });

  ///External IDs
  ///@param series_id
  ///@param season_number
  Future<chopper.Response<TvSeriesIdSeasonSeasonNumberExternalIdsGet$Response>>
  tvSeriesIdSeasonSeasonNumberExternalIdsGet({
    required int? seriesId,
    required int? seasonNumber,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdSeasonSeasonNumberExternalIdsGet$Response,
      () => TvSeriesIdSeasonSeasonNumberExternalIdsGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdSeasonSeasonNumberExternalIdsGet(
      seriesId: seriesId,
      seasonNumber: seasonNumber,
    );
  }

  ///External IDs
  ///@param series_id
  ///@param season_number
  @GET(path: '/tv/{series_id}/season/{season_number}/external_ids')
  Future<chopper.Response<TvSeriesIdSeasonSeasonNumberExternalIdsGet$Response>>
  _tvSeriesIdSeasonSeasonNumberExternalIdsGet({
    @Path('series_id') required int? seriesId,
    @Path('season_number') required int? seasonNumber,
  });

  ///Images
  ///@param series_id
  ///@param include_image_language specify a comma separated list of ISO-639-1 values to query, for example: `en-US,null`
  ///@param language
  ///@param season_number
  Future<chopper.Response<TvSeriesIdSeasonSeasonNumberImagesGet$Response>>
  tvSeriesIdSeasonSeasonNumberImagesGet({
    required int? seriesId,
    String? includeImageLanguage,
    String? language,
    required int? seasonNumber,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdSeasonSeasonNumberImagesGet$Response,
      () => TvSeriesIdSeasonSeasonNumberImagesGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdSeasonSeasonNumberImagesGet(
      seriesId: seriesId,
      includeImageLanguage: includeImageLanguage,
      language: language,
      seasonNumber: seasonNumber,
    );
  }

  ///Images
  ///@param series_id
  ///@param include_image_language specify a comma separated list of ISO-639-1 values to query, for example: `en-US,null`
  ///@param language
  ///@param season_number
  @GET(path: '/tv/{series_id}/season/{season_number}/images')
  Future<chopper.Response<TvSeriesIdSeasonSeasonNumberImagesGet$Response>>
  _tvSeriesIdSeasonSeasonNumberImagesGet({
    @Path('series_id') required int? seriesId,
    @Query('include_image_language') String? includeImageLanguage,
    @Query('language') String? language,
    @Path('season_number') required int? seasonNumber,
  });

  ///Translations
  ///@param series_id
  ///@param season_number
  Future<chopper.Response<TvSeriesIdSeasonSeasonNumberTranslationsGet$Response>>
  tvSeriesIdSeasonSeasonNumberTranslationsGet({
    required int? seriesId,
    required int? seasonNumber,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdSeasonSeasonNumberTranslationsGet$Response,
      () =>
          TvSeriesIdSeasonSeasonNumberTranslationsGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdSeasonSeasonNumberTranslationsGet(
      seriesId: seriesId,
      seasonNumber: seasonNumber,
    );
  }

  ///Translations
  ///@param series_id
  ///@param season_number
  @GET(path: '/tv/{series_id}/season/{season_number}/translations')
  Future<chopper.Response<TvSeriesIdSeasonSeasonNumberTranslationsGet$Response>>
  _tvSeriesIdSeasonSeasonNumberTranslationsGet({
    @Path('series_id') required int? seriesId,
    @Path('season_number') required int? seasonNumber,
  });

  ///Videos
  ///@param series_id
  ///@param include_video_language filter the list results by language, supports more than one value by using a comma
  ///@param language
  ///@param season_number
  Future<chopper.Response<TvSeriesIdSeasonSeasonNumberVideosGet$Response>>
  tvSeriesIdSeasonSeasonNumberVideosGet({
    required int? seriesId,
    String? includeVideoLanguage,
    String? language,
    required int? seasonNumber,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdSeasonSeasonNumberVideosGet$Response,
      () => TvSeriesIdSeasonSeasonNumberVideosGet$Response.fromJsonFactory,
    );

    return _tvSeriesIdSeasonSeasonNumberVideosGet(
      seriesId: seriesId,
      includeVideoLanguage: includeVideoLanguage,
      language: language,
      seasonNumber: seasonNumber,
    );
  }

  ///Videos
  ///@param series_id
  ///@param include_video_language filter the list results by language, supports more than one value by using a comma
  ///@param language
  ///@param season_number
  @GET(path: '/tv/{series_id}/season/{season_number}/videos')
  Future<chopper.Response<TvSeriesIdSeasonSeasonNumberVideosGet$Response>>
  _tvSeriesIdSeasonSeasonNumberVideosGet({
    @Path('series_id') required int? seriesId,
    @Query('include_video_language') String? includeVideoLanguage,
    @Query('language') String? language,
    @Path('season_number') required int? seasonNumber,
  });

  ///Watch Providers
  ///@param series_id
  ///@param language
  ///@param season_number
  Future<
    chopper.Response<TvSeriesIdSeasonSeasonNumberWatchProvidersGet$Response>
  >
  tvSeriesIdSeasonSeasonNumberWatchProvidersGet({
    required int? seriesId,
    String? language,
    required int? seasonNumber,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdSeasonSeasonNumberWatchProvidersGet$Response,
      () => TvSeriesIdSeasonSeasonNumberWatchProvidersGet$Response
          .fromJsonFactory,
    );

    return _tvSeriesIdSeasonSeasonNumberWatchProvidersGet(
      seriesId: seriesId,
      language: language,
      seasonNumber: seasonNumber,
    );
  }

  ///Watch Providers
  ///@param series_id
  ///@param language
  ///@param season_number
  @GET(path: '/tv/{series_id}/season/{season_number}/watch/providers')
  Future<
    chopper.Response<TvSeriesIdSeasonSeasonNumberWatchProvidersGet$Response>
  >
  _tvSeriesIdSeasonSeasonNumberWatchProvidersGet({
    @Path('series_id') required int? seriesId,
    @Query('language') String? language,
    @Path('season_number') required int? seasonNumber,
  });

  ///Details
  ///@param series_id
  ///@param season_number
  ///@param episode_number
  ///@param append_to_response comma separated list of endpoints within this namespace, 20 items max
  ///@param language
  Future<
    chopper.Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberGet$Response
    >
  >
  tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberGet({
    required int? seriesId,
    required int? seasonNumber,
    required int? episodeNumber,
    String? appendToResponse,
    String? language,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberGet$Response,
      () => TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberGet$Response
          .fromJsonFactory,
    );

    return _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberGet(
      seriesId: seriesId,
      seasonNumber: seasonNumber,
      episodeNumber: episodeNumber,
      appendToResponse: appendToResponse,
      language: language,
    );
  }

  ///Details
  ///@param series_id
  ///@param season_number
  ///@param episode_number
  ///@param append_to_response comma separated list of endpoints within this namespace, 20 items max
  ///@param language
  @GET(path: '/tv/{series_id}/season/{season_number}/episode/{episode_number}')
  Future<
    chopper.Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberGet$Response
    >
  >
  _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberGet({
    @Path('series_id') required int? seriesId,
    @Path('season_number') required int? seasonNumber,
    @Path('episode_number') required int? episodeNumber,
    @Query('append_to_response') String? appendToResponse,
    @Query('language') String? language,
  });

  ///Account States
  ///@param series_id
  ///@param session_id
  ///@param season_number
  ///@param episode_number
  ///@param guest_session_id
  Future<
    chopper.Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberAccountStatesGet$Response
    >
  >
  tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberAccountStatesGet({
    required int? seriesId,
    String? sessionId,
    required int? seasonNumber,
    required int? episodeNumber,
    String? guestSessionId,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberAccountStatesGet$Response,
      () =>
          TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberAccountStatesGet$Response
              .fromJsonFactory,
    );

    return _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberAccountStatesGet(
      seriesId: seriesId,
      sessionId: sessionId,
      seasonNumber: seasonNumber,
      episodeNumber: episodeNumber,
      guestSessionId: guestSessionId,
    );
  }

  ///Account States
  ///@param series_id
  ///@param session_id
  ///@param season_number
  ///@param episode_number
  ///@param guest_session_id
  @GET(
    path:
        '/tv/{series_id}/season/{season_number}/episode/{episode_number}/account_states',
  )
  Future<
    chopper.Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberAccountStatesGet$Response
    >
  >
  _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberAccountStatesGet({
    @Path('series_id') required int? seriesId,
    @Query('session_id') String? sessionId,
    @Path('season_number') required int? seasonNumber,
    @Path('episode_number') required int? episodeNumber,
    @Query('guest_session_id') String? guestSessionId,
  });

  ///Changes
  ///@param episode_id
  Future<chopper.Response<TvEpisodeEpisodeIdChangesGet$Response>>
  tvEpisodeEpisodeIdChangesGet({required int? episodeId}) {
    generatedMapping.putIfAbsent(
      TvEpisodeEpisodeIdChangesGet$Response,
      () => TvEpisodeEpisodeIdChangesGet$Response.fromJsonFactory,
    );

    return _tvEpisodeEpisodeIdChangesGet(episodeId: episodeId);
  }

  ///Changes
  ///@param episode_id
  @GET(path: '/tv/episode/{episode_id}/changes')
  Future<chopper.Response<TvEpisodeEpisodeIdChangesGet$Response>>
  _tvEpisodeEpisodeIdChangesGet({@Path('episode_id') required int? episodeId});

  ///Credits
  ///@param series_id
  ///@param season_number
  ///@param language
  ///@param episode_number
  Future<
    chopper.Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberCreditsGet$Response
    >
  >
  tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberCreditsGet({
    required int? seriesId,
    required int? seasonNumber,
    String? language,
    required int? episodeNumber,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberCreditsGet$Response,
      () => TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberCreditsGet$Response
          .fromJsonFactory,
    );

    return _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberCreditsGet(
      seriesId: seriesId,
      seasonNumber: seasonNumber,
      language: language,
      episodeNumber: episodeNumber,
    );
  }

  ///Credits
  ///@param series_id
  ///@param season_number
  ///@param language
  ///@param episode_number
  @GET(
    path:
        '/tv/{series_id}/season/{season_number}/episode/{episode_number}/credits',
  )
  Future<
    chopper.Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberCreditsGet$Response
    >
  >
  _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberCreditsGet({
    @Path('series_id') required int? seriesId,
    @Path('season_number') required int? seasonNumber,
    @Query('language') String? language,
    @Path('episode_number') required int? episodeNumber,
  });

  ///External IDs
  ///@param series_id
  ///@param season_number
  ///@param episode_number
  Future<
    chopper.Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberExternalIdsGet$Response
    >
  >
  tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberExternalIdsGet({
    required int? seriesId,
    required int? seasonNumber,
    required String? episodeNumber,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberExternalIdsGet$Response,
      () =>
          TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberExternalIdsGet$Response
              .fromJsonFactory,
    );

    return _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberExternalIdsGet(
      seriesId: seriesId,
      seasonNumber: seasonNumber,
      episodeNumber: episodeNumber,
    );
  }

  ///External IDs
  ///@param series_id
  ///@param season_number
  ///@param episode_number
  @GET(
    path:
        '/tv/{series_id}/season/{season_number}/episode/{episode_number}/external_ids',
  )
  Future<
    chopper.Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberExternalIdsGet$Response
    >
  >
  _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberExternalIdsGet({
    @Path('series_id') required int? seriesId,
    @Path('season_number') required int? seasonNumber,
    @Path('episode_number') required String? episodeNumber,
  });

  ///Images
  ///@param series_id
  ///@param include_image_language specify a comma separated list of ISO-639-1 values to query, for example: `en-US,null`
  ///@param language
  ///@param season_number
  ///@param episode_number
  Future<
    chopper.Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberImagesGet$Response
    >
  >
  tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberImagesGet({
    required int? seriesId,
    String? includeImageLanguage,
    String? language,
    required int? seasonNumber,
    required int? episodeNumber,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberImagesGet$Response,
      () => TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberImagesGet$Response
          .fromJsonFactory,
    );

    return _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberImagesGet(
      seriesId: seriesId,
      includeImageLanguage: includeImageLanguage,
      language: language,
      seasonNumber: seasonNumber,
      episodeNumber: episodeNumber,
    );
  }

  ///Images
  ///@param series_id
  ///@param include_image_language specify a comma separated list of ISO-639-1 values to query, for example: `en-US,null`
  ///@param language
  ///@param season_number
  ///@param episode_number
  @GET(
    path:
        '/tv/{series_id}/season/{season_number}/episode/{episode_number}/images',
  )
  Future<
    chopper.Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberImagesGet$Response
    >
  >
  _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberImagesGet({
    @Path('series_id') required int? seriesId,
    @Query('include_image_language') String? includeImageLanguage,
    @Query('language') String? language,
    @Path('season_number') required int? seasonNumber,
    @Path('episode_number') required int? episodeNumber,
  });

  ///Translations
  ///@param series_id
  ///@param season_number
  ///@param episode_number
  Future<
    chopper.Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberTranslationsGet$Response
    >
  >
  tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberTranslationsGet({
    required int? seriesId,
    required int? seasonNumber,
    required int? episodeNumber,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberTranslationsGet$Response,
      () =>
          TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberTranslationsGet$Response
              .fromJsonFactory,
    );

    return _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberTranslationsGet(
      seriesId: seriesId,
      seasonNumber: seasonNumber,
      episodeNumber: episodeNumber,
    );
  }

  ///Translations
  ///@param series_id
  ///@param season_number
  ///@param episode_number
  @GET(
    path:
        '/tv/{series_id}/season/{season_number}/episode/{episode_number}/translations',
  )
  Future<
    chopper.Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberTranslationsGet$Response
    >
  >
  _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberTranslationsGet({
    @Path('series_id') required int? seriesId,
    @Path('season_number') required int? seasonNumber,
    @Path('episode_number') required int? episodeNumber,
  });

  ///Videos
  ///@param series_id
  ///@param include_video_language filter the list results by language, supports more than one value by using a comma
  ///@param language
  ///@param season_number
  ///@param episode_number
  Future<
    chopper.Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberVideosGet$Response
    >
  >
  tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberVideosGet({
    required int? seriesId,
    String? includeVideoLanguage,
    String? language,
    required int? seasonNumber,
    required int? episodeNumber,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberVideosGet$Response,
      () => TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberVideosGet$Response
          .fromJsonFactory,
    );

    return _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberVideosGet(
      seriesId: seriesId,
      includeVideoLanguage: includeVideoLanguage,
      language: language,
      seasonNumber: seasonNumber,
      episodeNumber: episodeNumber,
    );
  }

  ///Videos
  ///@param series_id
  ///@param include_video_language filter the list results by language, supports more than one value by using a comma
  ///@param language
  ///@param season_number
  ///@param episode_number
  @GET(
    path:
        '/tv/{series_id}/season/{season_number}/episode/{episode_number}/videos',
  )
  Future<
    chopper.Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberVideosGet$Response
    >
  >
  _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberVideosGet({
    @Path('series_id') required int? seriesId,
    @Query('include_video_language') String? includeVideoLanguage,
    @Query('language') String? language,
    @Path('season_number') required int? seasonNumber,
    @Path('episode_number') required int? episodeNumber,
  });

  ///Add Rating
  ///@param series_id
  ///@param guest_session_id
  ///@param session_id
  ///@param Content-Type
  ///@param season_number
  ///@param episode_number
  Future<
    chopper.Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingPost$Response
    >
  >
  tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingPost({
    required int? seriesId,
    String? guestSessionId,
    String? sessionId,
    String? contentType,
    required int? seasonNumber,
    required int? episodeNumber,
    required TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingPost$RequestBody?
    body,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingPost$Response,
      () => TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingPost$Response
          .fromJsonFactory,
    );

    return _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingPost(
      seriesId: seriesId,
      guestSessionId: guestSessionId,
      sessionId: sessionId,
      contentType: contentType?.toString(),
      seasonNumber: seasonNumber,
      episodeNumber: episodeNumber,
      body: body,
    );
  }

  ///Add Rating
  ///@param series_id
  ///@param guest_session_id
  ///@param session_id
  ///@param Content-Type
  ///@param season_number
  ///@param episode_number
  @POST(
    path:
        '/tv/{series_id}/season/{season_number}/episode/{episode_number}/rating',
    optionalBody: true,
  )
  Future<
    chopper.Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingPost$Response
    >
  >
  _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingPost({
    @Path('series_id') required int? seriesId,
    @Query('guest_session_id') String? guestSessionId,
    @Query('session_id') String? sessionId,
    @Header('Content-Type') String? contentType,
    @Path('season_number') required int? seasonNumber,
    @Path('episode_number') required int? episodeNumber,
    @Body()
    required TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingPost$RequestBody?
    body,
  });

  ///Delete Rating
  ///@param series_id
  ///@param Content-Type
  ///@param guest_session_id
  ///@param session_id
  ///@param season_number
  ///@param episode_number
  Future<
    chopper.Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingDelete$Response
    >
  >
  tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingDelete({
    required int? seriesId,
    String? contentType,
    String? guestSessionId,
    String? sessionId,
    required int? seasonNumber,
    required int? episodeNumber,
  }) {
    generatedMapping.putIfAbsent(
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingDelete$Response,
      () =>
          TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingDelete$Response
              .fromJsonFactory,
    );

    return _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingDelete(
      seriesId: seriesId,
      contentType: contentType?.toString(),
      guestSessionId: guestSessionId,
      sessionId: sessionId,
      seasonNumber: seasonNumber,
      episodeNumber: episodeNumber,
    );
  }

  ///Delete Rating
  ///@param series_id
  ///@param Content-Type
  ///@param guest_session_id
  ///@param session_id
  ///@param season_number
  ///@param episode_number
  @DELETE(
    path:
        '/tv/{series_id}/season/{season_number}/episode/{episode_number}/rating',
  )
  Future<
    chopper.Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingDelete$Response
    >
  >
  _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingDelete({
    @Path('series_id') required int? seriesId,
    @Header('Content-Type') String? contentType,
    @Query('guest_session_id') String? guestSessionId,
    @Query('session_id') String? sessionId,
    @Path('season_number') required int? seasonNumber,
    @Path('episode_number') required int? episodeNumber,
  });

  ///Details
  ///@param tv_episode_group_id
  Future<chopper.Response<TvEpisodeGroupTvEpisodeGroupIdGet$Response>>
  tvEpisodeGroupTvEpisodeGroupIdGet({required String? tvEpisodeGroupId}) {
    generatedMapping.putIfAbsent(
      TvEpisodeGroupTvEpisodeGroupIdGet$Response,
      () => TvEpisodeGroupTvEpisodeGroupIdGet$Response.fromJsonFactory,
    );

    return _tvEpisodeGroupTvEpisodeGroupIdGet(
      tvEpisodeGroupId: tvEpisodeGroupId,
    );
  }

  ///Details
  ///@param tv_episode_group_id
  @GET(path: '/tv/episode_group/{tv_episode_group_id}')
  Future<chopper.Response<TvEpisodeGroupTvEpisodeGroupIdGet$Response>>
  _tvEpisodeGroupTvEpisodeGroupIdGet({
    @Path('tv_episode_group_id') required String? tvEpisodeGroupId,
  });

  ///Available Regions
  ///@param language
  Future<chopper.Response<WatchProvidersRegionsGet$Response>>
  watchProvidersRegionsGet({String? language}) {
    generatedMapping.putIfAbsent(
      WatchProvidersRegionsGet$Response,
      () => WatchProvidersRegionsGet$Response.fromJsonFactory,
    );

    return _watchProvidersRegionsGet(language: language);
  }

  ///Available Regions
  ///@param language
  @GET(path: '/watch/providers/regions')
  Future<chopper.Response<WatchProvidersRegionsGet$Response>>
  _watchProvidersRegionsGet({@Query('language') String? language});

  ///Movie Providers
  ///@param language
  ///@param watch_region
  Future<chopper.Response<WatchProvidersMovieGet$Response>>
  watchProvidersMovieGet({String? language, String? watchRegion}) {
    generatedMapping.putIfAbsent(
      WatchProvidersMovieGet$Response,
      () => WatchProvidersMovieGet$Response.fromJsonFactory,
    );

    return _watchProvidersMovieGet(
      language: language,
      watchRegion: watchRegion,
    );
  }

  ///Movie Providers
  ///@param language
  ///@param watch_region
  @GET(path: '/watch/providers/movie')
  Future<chopper.Response<WatchProvidersMovieGet$Response>>
  _watchProvidersMovieGet({
    @Query('language') String? language,
    @Query('watch_region') String? watchRegion,
  });

  ///TV Providers
  ///@param language
  ///@param watch_region
  Future<chopper.Response<WatchProvidersTvGet$Response>> watchProvidersTvGet({
    String? language,
    String? watchRegion,
  }) {
    generatedMapping.putIfAbsent(
      WatchProvidersTvGet$Response,
      () => WatchProvidersTvGet$Response.fromJsonFactory,
    );

    return _watchProvidersTvGet(language: language, watchRegion: watchRegion);
  }

  ///TV Providers
  ///@param language
  ///@param watch_region
  @GET(path: '/watch/providers/tv')
  Future<chopper.Response<WatchProvidersTvGet$Response>> _watchProvidersTvGet({
    @Query('language') String? language,
    @Query('watch_region') String? watchRegion,
  });
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
    chopper.Response response,
  ) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
        body:
            DateTime.parse((response.body as String).replaceAll('"', ''))
                as ResultType,
      );
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
      body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType,
    );
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
