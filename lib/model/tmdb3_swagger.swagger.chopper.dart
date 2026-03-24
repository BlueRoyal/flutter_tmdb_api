// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb3_swagger.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$Tmdb3Swagger extends Tmdb3Swagger {
  _$Tmdb3Swagger([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = Tmdb3Swagger;

  @override
  Future<Response<AuthenticationGet$Response>> _authenticationGet() {
    final Uri $url = Uri.parse('/authentication');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<AuthenticationGet$Response, AuthenticationGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<AccountAccountIdGet$Response>> _accountAccountIdGet({
    required int? accountId,
    String? sessionId,
  }) {
    final Uri $url = Uri.parse('/account/${accountId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'session_id': sessionId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<AccountAccountIdGet$Response, AccountAccountIdGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<AccountAccountIdFavoritePost$Response>>
  _accountAccountIdFavoritePost({
    required int? accountId,
    String? sessionId,
    required AccountAccountIdFavoritePost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/account/${accountId}/favorite');
    final Map<String, dynamic> $params = <String, dynamic>{
      'session_id': sessionId,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<
      AccountAccountIdFavoritePost$Response,
      AccountAccountIdFavoritePost$Response
    >($request);
  }

  @override
  Future<Response<AccountAccountIdWatchlistPost$Response>>
  _accountAccountIdWatchlistPost({
    required int? accountId,
    String? sessionId,
    required AccountAccountIdWatchlistPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/account/${accountId}/watchlist');
    final Map<String, dynamic> $params = <String, dynamic>{
      'session_id': sessionId,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<
      AccountAccountIdWatchlistPost$Response,
      AccountAccountIdWatchlistPost$Response
    >($request);
  }

  @override
  Future<Response<AccountAccountIdFavoriteMoviesGet$Response>>
  _accountAccountIdFavoriteMoviesGet({
    required int? accountId,
    String? language,
    int? page,
    String? sessionId,
    String? sortBy,
  }) {
    final Uri $url = Uri.parse('/account/${accountId}/favorite/movies');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
      'session_id': sessionId,
      'sort_by': sortBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      AccountAccountIdFavoriteMoviesGet$Response,
      AccountAccountIdFavoriteMoviesGet$Response
    >($request);
  }

  @override
  Future<Response<AccountAccountIdFavoriteTvGet$Response>>
  _accountAccountIdFavoriteTvGet({
    required int? accountId,
    String? language,
    int? page,
    String? sessionId,
    String? sortBy,
  }) {
    final Uri $url = Uri.parse('/account/${accountId}/favorite/tv');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
      'session_id': sessionId,
      'sort_by': sortBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      AccountAccountIdFavoriteTvGet$Response,
      AccountAccountIdFavoriteTvGet$Response
    >($request);
  }

  @override
  Future<Response<AccountAccountIdListsGet$Response>>
  _accountAccountIdListsGet({
    required int? accountId,
    int? page,
    String? sessionId,
  }) {
    final Uri $url = Uri.parse('/account/${accountId}/lists');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'session_id': sessionId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      AccountAccountIdListsGet$Response,
      AccountAccountIdListsGet$Response
    >($request);
  }

  @override
  Future<Response<AccountAccountIdRatedMoviesGet$Response>>
  _accountAccountIdRatedMoviesGet({
    required int? accountId,
    String? language,
    int? page,
    String? sessionId,
    String? sortBy,
  }) {
    final Uri $url = Uri.parse('/account/${accountId}/rated/movies');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
      'session_id': sessionId,
      'sort_by': sortBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      AccountAccountIdRatedMoviesGet$Response,
      AccountAccountIdRatedMoviesGet$Response
    >($request);
  }

  @override
  Future<Response<AccountAccountIdRatedTvGet$Response>>
  _accountAccountIdRatedTvGet({
    required int? accountId,
    String? language,
    int? page,
    String? sessionId,
    String? sortBy,
  }) {
    final Uri $url = Uri.parse('/account/${accountId}/rated/tv');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
      'session_id': sessionId,
      'sort_by': sortBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      AccountAccountIdRatedTvGet$Response,
      AccountAccountIdRatedTvGet$Response
    >($request);
  }

  @override
  Future<Response<AccountAccountIdRatedTvEpisodesGet$Response>>
  _accountAccountIdRatedTvEpisodesGet({
    required int? accountId,
    String? language,
    int? page,
    String? sessionId,
    String? sortBy,
  }) {
    final Uri $url = Uri.parse('/account/${accountId}/rated/tv/episodes');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
      'session_id': sessionId,
      'sort_by': sortBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      AccountAccountIdRatedTvEpisodesGet$Response,
      AccountAccountIdRatedTvEpisodesGet$Response
    >($request);
  }

  @override
  Future<Response<AccountAccountIdWatchlistMoviesGet$Response>>
  _accountAccountIdWatchlistMoviesGet({
    required int? accountId,
    String? language,
    int? page,
    String? sessionId,
    String? sortBy,
  }) {
    final Uri $url = Uri.parse('/account/${accountId}/watchlist/movies');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
      'session_id': sessionId,
      'sort_by': sortBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      AccountAccountIdWatchlistMoviesGet$Response,
      AccountAccountIdWatchlistMoviesGet$Response
    >($request);
  }

  @override
  Future<Response<AccountAccountIdWatchlistTvGet$Response>>
  _accountAccountIdWatchlistTvGet({
    required int? accountId,
    String? language,
    int? page,
    String? sessionId,
    String? sortBy,
  }) {
    final Uri $url = Uri.parse('/account/${accountId}/watchlist/tv');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
      'session_id': sessionId,
      'sort_by': sortBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      AccountAccountIdWatchlistTvGet$Response,
      AccountAccountIdWatchlistTvGet$Response
    >($request);
  }

  @override
  Future<Response<AuthenticationGuestSessionNewGet$Response>>
  _authenticationGuestSessionNewGet() {
    final Uri $url = Uri.parse('/authentication/guest_session/new');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      AuthenticationGuestSessionNewGet$Response,
      AuthenticationGuestSessionNewGet$Response
    >($request);
  }

  @override
  Future<Response<AuthenticationTokenNewGet$Response>>
  _authenticationTokenNewGet() {
    final Uri $url = Uri.parse('/authentication/token/new');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      AuthenticationTokenNewGet$Response,
      AuthenticationTokenNewGet$Response
    >($request);
  }

  @override
  Future<Response<AuthenticationSessionNewPost$Response>>
  _authenticationSessionNewPost({
    required AuthenticationSessionNewPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/authentication/session/new');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<
      AuthenticationSessionNewPost$Response,
      AuthenticationSessionNewPost$Response
    >($request);
  }

  @override
  Future<Response<AuthenticationSessionConvert4Post$Response>>
  _authenticationSessionConvert4Post({
    required AuthenticationSessionConvert4Post$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/authentication/session/convert/4');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<
      AuthenticationSessionConvert4Post$Response,
      AuthenticationSessionConvert4Post$Response
    >($request);
  }

  @override
  Future<Response<AuthenticationTokenValidateWithLoginPost$Response>>
  _authenticationTokenValidateWithLoginPost({
    required AuthenticationTokenValidateWithLoginPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/authentication/token/validate_with_login');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<
      AuthenticationTokenValidateWithLoginPost$Response,
      AuthenticationTokenValidateWithLoginPost$Response
    >($request);
  }

  @override
  Future<Response<AuthenticationSessionDelete$Response>>
  _authenticationSessionDelete({
    required AuthenticationSessionDelete$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/authentication/session');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<
      AuthenticationSessionDelete$Response,
      AuthenticationSessionDelete$Response
    >($request);
  }

  @override
  Future<Response<CertificationMovieListGet$Response>>
  _certificationMovieListGet() {
    final Uri $url = Uri.parse('/certification/movie/list');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      CertificationMovieListGet$Response,
      CertificationMovieListGet$Response
    >($request);
  }

  @override
  Future<Response<CertificationTvListGet$Response>> _certificationTvListGet() {
    final Uri $url = Uri.parse('/certification/tv/list');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client
        .send<CertificationTvListGet$Response, CertificationTvListGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<MovieChangesGet$Response>> _movieChangesGet({
    String? endDate,
    int? page,
    String? startDate,
  }) {
    final Uri $url = Uri.parse('/movie/changes');
    final Map<String, dynamic> $params = <String, dynamic>{
      'end_date': endDate,
      'page': page,
      'start_date': startDate,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<MovieChangesGet$Response, MovieChangesGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<PersonChangesGet$Response>> _personChangesGet({
    String? endDate,
    int? page,
    String? startDate,
  }) {
    final Uri $url = Uri.parse('/person/changes');
    final Map<String, dynamic> $params = <String, dynamic>{
      'end_date': endDate,
      'page': page,
      'start_date': startDate,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<PersonChangesGet$Response, PersonChangesGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<TvChangesGet$Response>> _tvChangesGet({
    String? endDate,
    int? page,
    String? startDate,
  }) {
    final Uri $url = Uri.parse('/tv/changes');
    final Map<String, dynamic> $params = <String, dynamic>{
      'end_date': endDate,
      'page': page,
      'start_date': startDate,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<TvChangesGet$Response, TvChangesGet$Response>($request);
  }

  @override
  Future<Response<CollectionCollectionIdGet$Response>>
  _collectionCollectionIdGet({required int? collectionId, String? language}) {
    final Uri $url = Uri.parse('/collection/${collectionId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      CollectionCollectionIdGet$Response,
      CollectionCollectionIdGet$Response
    >($request);
  }

  @override
  Future<Response<CollectionCollectionIdImagesGet$Response>>
  _collectionCollectionIdImagesGet({
    required int? collectionId,
    String? includeImageLanguage,
    String? language,
  }) {
    final Uri $url = Uri.parse('/collection/${collectionId}/images');
    final Map<String, dynamic> $params = <String, dynamic>{
      'include_image_language': includeImageLanguage,
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      CollectionCollectionIdImagesGet$Response,
      CollectionCollectionIdImagesGet$Response
    >($request);
  }

  @override
  Future<Response<CollectionCollectionIdTranslationsGet$Response>>
  _collectionCollectionIdTranslationsGet({required int? collectionId}) {
    final Uri $url = Uri.parse('/collection/${collectionId}/translations');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      CollectionCollectionIdTranslationsGet$Response,
      CollectionCollectionIdTranslationsGet$Response
    >($request);
  }

  @override
  Future<Response<CompanyCompanyIdGet$Response>> _companyCompanyIdGet({
    required int? companyId,
  }) {
    final Uri $url = Uri.parse('/company/${companyId}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client
        .send<CompanyCompanyIdGet$Response, CompanyCompanyIdGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<CompanyCompanyIdAlternativeNamesGet$Response>>
  _companyCompanyIdAlternativeNamesGet({required int? companyId}) {
    final Uri $url = Uri.parse('/company/${companyId}/alternative_names');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      CompanyCompanyIdAlternativeNamesGet$Response,
      CompanyCompanyIdAlternativeNamesGet$Response
    >($request);
  }

  @override
  Future<Response<CompanyCompanyIdImagesGet$Response>>
  _companyCompanyIdImagesGet({required int? companyId}) {
    final Uri $url = Uri.parse('/company/${companyId}/images');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      CompanyCompanyIdImagesGet$Response,
      CompanyCompanyIdImagesGet$Response
    >($request);
  }

  @override
  Future<Response<ConfigurationGet$Response>> _configurationGet() {
    final Uri $url = Uri.parse('/configuration');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<ConfigurationGet$Response, ConfigurationGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<List<List<ConfigurationCountriesGet$Response$Item>>>>
  _configurationCountriesGet({String? language}) {
    final Uri $url = Uri.parse('/configuration/countries');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      List<List<ConfigurationCountriesGet$Response$Item>>,
      List<ConfigurationCountriesGet$Response$Item>
    >($request);
  }

  @override
  Future<Response<List<List<ConfigurationJobsGet$Response$Item>>>>
  _configurationJobsGet() {
    final Uri $url = Uri.parse('/configuration/jobs');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      List<List<ConfigurationJobsGet$Response$Item>>,
      List<ConfigurationJobsGet$Response$Item>
    >($request);
  }

  @override
  Future<Response<List<List<ConfigurationLanguagesGet$Response$Item>>>>
  _configurationLanguagesGet() {
    final Uri $url = Uri.parse('/configuration/languages');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      List<List<ConfigurationLanguagesGet$Response$Item>>,
      List<ConfigurationLanguagesGet$Response$Item>
    >($request);
  }

  @override
  Future<Response<List<String>>> _configurationPrimaryTranslationsGet() {
    final Uri $url = Uri.parse('/configuration/primary_translations');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<List<String>, String>($request);
  }

  @override
  Future<Response<List<List<ConfigurationTimezonesGet$Response$Item>>>>
  _configurationTimezonesGet() {
    final Uri $url = Uri.parse('/configuration/timezones');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      List<List<ConfigurationTimezonesGet$Response$Item>>,
      List<ConfigurationTimezonesGet$Response$Item>
    >($request);
  }

  @override
  Future<Response<CreditCreditIdGet$Response>> _creditCreditIdGet({
    required String? creditId,
    String? language,
  }) {
    final Uri $url = Uri.parse('/credit/${creditId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<CreditCreditIdGet$Response, CreditCreditIdGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<DiscoverMovieGet$Response>> _discoverMovieGet({
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
    String? sortBy,
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
    final Uri $url = Uri.parse('/discover/movie');
    final Map<String, dynamic> $params = <String, dynamic>{
      'certification': certification,
      'certification.gte': certificationGte,
      'certification.lte': certificationLte,
      'certification_country': certificationCountry,
      'include_adult': includeAdult,
      'include_video': includeVideo,
      'language': language,
      'page': page,
      'primary_release_year': primaryReleaseYear,
      'primary_release_date.gte': primaryReleaseDateGte,
      'primary_release_date.lte': primaryReleaseDateLte,
      'region': region,
      'release_date.gte': releaseDateGte,
      'release_date.lte': releaseDateLte,
      'sort_by': sortBy,
      'vote_average.gte': voteAverageGte,
      'vote_average.lte': voteAverageLte,
      'vote_count.gte': voteCountGte,
      'vote_count.lte': voteCountLte,
      'watch_region': watchRegion,
      'with_cast': withCast,
      'with_companies': withCompanies,
      'with_crew': withCrew,
      'with_genres': withGenres,
      'with_keywords': withKeywords,
      'with_origin_country': withOriginCountry,
      'with_original_language': withOriginalLanguage,
      'with_people': withPeople,
      'with_release_type': withReleaseType,
      'with_runtime.gte': withRuntimeGte,
      'with_runtime.lte': withRuntimeLte,
      'with_watch_monetization_types': withWatchMonetizationTypes,
      'with_watch_providers': withWatchProviders,
      'without_companies': withoutCompanies,
      'without_genres': withoutGenres,
      'without_keywords': withoutKeywords,
      'without_watch_providers': withoutWatchProviders,
      'year': year,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<DiscoverMovieGet$Response, DiscoverMovieGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<DiscoverTvGet$Response>> _discoverTvGet({
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
    String? sortBy,
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
    final Uri $url = Uri.parse('/discover/tv');
    final Map<String, dynamic> $params = <String, dynamic>{
      'air_date.gte': airDateGte,
      'air_date.lte': airDateLte,
      'first_air_date_year': firstAirDateYear,
      'first_air_date.gte': firstAirDateGte,
      'first_air_date.lte': firstAirDateLte,
      'include_adult': includeAdult,
      'include_null_first_air_dates': includeNullFirstAirDates,
      'language': language,
      'page': page,
      'screened_theatrically': screenedTheatrically,
      'sort_by': sortBy,
      'timezone': timezone,
      'vote_average.gte': voteAverageGte,
      'vote_average.lte': voteAverageLte,
      'vote_count.gte': voteCountGte,
      'vote_count.lte': voteCountLte,
      'watch_region': watchRegion,
      'with_companies': withCompanies,
      'with_genres': withGenres,
      'with_keywords': withKeywords,
      'with_networks': withNetworks,
      'with_origin_country': withOriginCountry,
      'with_original_language': withOriginalLanguage,
      'with_runtime.gte': withRuntimeGte,
      'with_runtime.lte': withRuntimeLte,
      'with_status': withStatus,
      'with_watch_monetization_types': withWatchMonetizationTypes,
      'with_watch_providers': withWatchProviders,
      'without_companies': withoutCompanies,
      'without_genres': withoutGenres,
      'without_keywords': withoutKeywords,
      'without_watch_providers': withoutWatchProviders,
      'with_type': withType,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<DiscoverTvGet$Response, DiscoverTvGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<FindExternalIdGet$Response>> _findExternalIdGet({
    required String? externalId,
    required String? externalSource,
    String? language,
  }) {
    final Uri $url = Uri.parse('/find/${externalId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'external_source': externalSource,
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<FindExternalIdGet$Response, FindExternalIdGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<GenreMovieListGet$Response>> _genreMovieListGet({
    String? language,
  }) {
    final Uri $url = Uri.parse('/genre/movie/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<GenreMovieListGet$Response, GenreMovieListGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<GenreTvListGet$Response>> _genreTvListGet({
    String? language,
  }) {
    final Uri $url = Uri.parse('/genre/tv/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<GenreTvListGet$Response, GenreTvListGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<GuestSessionGuestSessionIdRatedMoviesGet$Response>>
  _guestSessionGuestSessionIdRatedMoviesGet({
    required String? guestSessionId,
    String? language,
    int? page,
    String? sortBy,
  }) {
    final Uri $url = Uri.parse('/guest_session/${guestSessionId}/rated/movies');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
      'sort_by': sortBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      GuestSessionGuestSessionIdRatedMoviesGet$Response,
      GuestSessionGuestSessionIdRatedMoviesGet$Response
    >($request);
  }

  @override
  Future<Response<GuestSessionGuestSessionIdRatedTvGet$Response>>
  _guestSessionGuestSessionIdRatedTvGet({
    required String? guestSessionId,
    String? language,
    int? page,
    String? sortBy,
  }) {
    final Uri $url = Uri.parse('/guest_session/${guestSessionId}/rated/tv');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
      'sort_by': sortBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      GuestSessionGuestSessionIdRatedTvGet$Response,
      GuestSessionGuestSessionIdRatedTvGet$Response
    >($request);
  }

  @override
  Future<Response<GuestSessionGuestSessionIdRatedTvEpisodesGet$Response>>
  _guestSessionGuestSessionIdRatedTvEpisodesGet({
    required String? guestSessionId,
    String? language,
    int? page,
    String? sortBy,
  }) {
    final Uri $url = Uri.parse(
      '/guest_session/${guestSessionId}/rated/tv/episodes',
    );
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
      'sort_by': sortBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      GuestSessionGuestSessionIdRatedTvEpisodesGet$Response,
      GuestSessionGuestSessionIdRatedTvEpisodesGet$Response
    >($request);
  }

  @override
  Future<Response<KeywordKeywordIdGet$Response>> _keywordKeywordIdGet({
    required int? keywordId,
  }) {
    final Uri $url = Uri.parse('/keyword/${keywordId}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client
        .send<KeywordKeywordIdGet$Response, KeywordKeywordIdGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<KeywordKeywordIdMoviesGet$Response>>
  _keywordKeywordIdMoviesGet({
    required String? keywordId,
    bool? includeAdult,
    String? language,
    int? page,
  }) {
    final Uri $url = Uri.parse('/keyword/${keywordId}/movies');
    final Map<String, dynamic> $params = <String, dynamic>{
      'include_adult': includeAdult,
      'language': language,
      'page': page,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      KeywordKeywordIdMoviesGet$Response,
      KeywordKeywordIdMoviesGet$Response
    >($request);
  }

  @override
  Future<Response<ListListIdAddItemPost$Response>> _listListIdAddItemPost({
    required int? listId,
    required String? sessionId,
    required ListListIdAddItemPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/list/${listId}/add_item');
    final Map<String, dynamic> $params = <String, dynamic>{
      'session_id': sessionId,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client
        .send<ListListIdAddItemPost$Response, ListListIdAddItemPost$Response>(
          $request,
        );
  }

  @override
  Future<Response<ListListIdItemStatusGet$Response>> _listListIdItemStatusGet({
    required int? listId,
    String? language,
    int? movieId,
  }) {
    final Uri $url = Uri.parse('/list/${listId}/item_status');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'movie_id': movieId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      ListListIdItemStatusGet$Response,
      ListListIdItemStatusGet$Response
    >($request);
  }

  @override
  Future<Response<ListListIdClearPost$Response>> _listListIdClearPost({
    required int? listId,
    required String? sessionId,
    required bool? confirm,
  }) {
    final Uri $url = Uri.parse('/list/${listId}/clear');
    final Map<String, dynamic> $params = <String, dynamic>{
      'session_id': sessionId,
      'confirm': confirm,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<ListListIdClearPost$Response, ListListIdClearPost$Response>(
          $request,
        );
  }

  @override
  Future<Response<ListPost$Response>> _list$Post({
    required String? sessionId,
    required ListPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'session_id': sessionId,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<ListPost$Response, ListPost$Response>($request);
  }

  @override
  Future<Response<ListListIdDelete$Response>> _listListIdDelete({
    required int? listId,
    required String? sessionId,
  }) {
    final Uri $url = Uri.parse('/list/${listId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'session_id': sessionId,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ListListIdDelete$Response, ListListIdDelete$Response>(
      $request,
    );
  }

  @override
  Future<Response<ListListIdGet$Response>> _listListIdGet({
    required int? listId,
    String? language,
    int? page,
  }) {
    final Uri $url = Uri.parse('/list/${listId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ListListIdGet$Response, ListListIdGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<ListListIdRemoveItemPost$Response>>
  _listListIdRemoveItemPost({
    required int? listId,
    required String? sessionId,
    required ListListIdRemoveItemPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/list/${listId}/remove_item');
    final Map<String, dynamic> $params = <String, dynamic>{
      'session_id': sessionId,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<
      ListListIdRemoveItemPost$Response,
      ListListIdRemoveItemPost$Response
    >($request);
  }

  @override
  Future<Response<MovieNowPlayingGet$Response>> _movieNowPlayingGet({
    String? language,
    int? page,
    String? region,
  }) {
    final Uri $url = Uri.parse('/movie/now_playing');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
      'region': region,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<MovieNowPlayingGet$Response, MovieNowPlayingGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<MoviePopularGet$Response>> _moviePopularGet({
    String? language,
    int? page,
    String? region,
  }) {
    final Uri $url = Uri.parse('/movie/popular');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
      'region': region,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<MoviePopularGet$Response, MoviePopularGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<MovieTopRatedGet$Response>> _movieTopRatedGet({
    String? language,
    int? page,
    String? region,
  }) {
    final Uri $url = Uri.parse('/movie/top_rated');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
      'region': region,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<MovieTopRatedGet$Response, MovieTopRatedGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<MovieUpcomingGet$Response>> _movieUpcomingGet({
    String? language,
    int? page,
    String? region,
  }) {
    final Uri $url = Uri.parse('/movie/upcoming');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
      'region': region,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<MovieUpcomingGet$Response, MovieUpcomingGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<MovieMovieIdGet$Response>> _movieMovieIdGet({
    required int? movieId,
    String? appendToResponse,
    String? language,
  }) {
    final Uri $url = Uri.parse('/movie/${movieId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'append_to_response': appendToResponse,
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<MovieMovieIdGet$Response, MovieMovieIdGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<MovieMovieIdAccountStatesGet$Response>>
  _movieMovieIdAccountStatesGet({
    required int? movieId,
    String? sessionId,
    String? guestSessionId,
  }) {
    final Uri $url = Uri.parse('/movie/${movieId}/account_states');
    final Map<String, dynamic> $params = <String, dynamic>{
      'session_id': sessionId,
      'guest_session_id': guestSessionId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      MovieMovieIdAccountStatesGet$Response,
      MovieMovieIdAccountStatesGet$Response
    >($request);
  }

  @override
  Future<Response<MovieMovieIdAlternativeTitlesGet$Response>>
  _movieMovieIdAlternativeTitlesGet({required int? movieId, String? country}) {
    final Uri $url = Uri.parse('/movie/${movieId}/alternative_titles');
    final Map<String, dynamic> $params = <String, dynamic>{'country': country};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      MovieMovieIdAlternativeTitlesGet$Response,
      MovieMovieIdAlternativeTitlesGet$Response
    >($request);
  }

  @override
  Future<Response<MovieMovieIdChangesGet$Response>> _movieMovieIdChangesGet({
    required int? movieId,
    String? endDate,
    int? page,
    String? startDate,
  }) {
    final Uri $url = Uri.parse('/movie/${movieId}/changes');
    final Map<String, dynamic> $params = <String, dynamic>{
      'end_date': endDate,
      'page': page,
      'start_date': startDate,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<MovieMovieIdChangesGet$Response, MovieMovieIdChangesGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<MovieMovieIdCreditsGet$Response>> _movieMovieIdCreditsGet({
    required int? movieId,
    String? language,
  }) {
    final Uri $url = Uri.parse('/movie/${movieId}/credits');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<MovieMovieIdCreditsGet$Response, MovieMovieIdCreditsGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<MovieMovieIdExternalIdsGet$Response>>
  _movieMovieIdExternalIdsGet({required int? movieId}) {
    final Uri $url = Uri.parse('/movie/${movieId}/external_ids');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      MovieMovieIdExternalIdsGet$Response,
      MovieMovieIdExternalIdsGet$Response
    >($request);
  }

  @override
  Future<Response<MovieMovieIdImagesGet$Response>> _movieMovieIdImagesGet({
    required int? movieId,
    String? includeImageLanguage,
    String? language,
  }) {
    final Uri $url = Uri.parse('/movie/${movieId}/images');
    final Map<String, dynamic> $params = <String, dynamic>{
      'include_image_language': includeImageLanguage,
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<MovieMovieIdImagesGet$Response, MovieMovieIdImagesGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<MovieMovieIdKeywordsGet$Response>> _movieMovieIdKeywordsGet({
    required String? movieId,
  }) {
    final Uri $url = Uri.parse('/movie/${movieId}/keywords');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      MovieMovieIdKeywordsGet$Response,
      MovieMovieIdKeywordsGet$Response
    >($request);
  }

  @override
  Future<Response<MovieLatestGet$Response>> _movieLatestGet() {
    final Uri $url = Uri.parse('/movie/latest');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<MovieLatestGet$Response, MovieLatestGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<MovieMovieIdListsGet$Response>> _movieMovieIdListsGet({
    required int? movieId,
    String? language,
    int? page,
  }) {
    final Uri $url = Uri.parse('/movie/${movieId}/lists');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<MovieMovieIdListsGet$Response, MovieMovieIdListsGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<Object>> _movieMovieIdRecommendationsGet({
    required int? movieId,
    String? language,
    int? page,
  }) {
    final Uri $url = Uri.parse('/movie/${movieId}/recommendations');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<MovieMovieIdReleaseDatesGet$Response>>
  _movieMovieIdReleaseDatesGet({required int? movieId}) {
    final Uri $url = Uri.parse('/movie/${movieId}/release_dates');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      MovieMovieIdReleaseDatesGet$Response,
      MovieMovieIdReleaseDatesGet$Response
    >($request);
  }

  @override
  Future<Response<MovieMovieIdReviewsGet$Response>> _movieMovieIdReviewsGet({
    required int? movieId,
    String? language,
    int? page,
  }) {
    final Uri $url = Uri.parse('/movie/${movieId}/reviews');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<MovieMovieIdReviewsGet$Response, MovieMovieIdReviewsGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<MovieMovieIdSimilarGet$Response>> _movieMovieIdSimilarGet({
    required int? movieId,
    String? language,
    int? page,
  }) {
    final Uri $url = Uri.parse('/movie/${movieId}/similar');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<MovieMovieIdSimilarGet$Response, MovieMovieIdSimilarGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<MovieMovieIdTranslationsGet$Response>>
  _movieMovieIdTranslationsGet({required int? movieId}) {
    final Uri $url = Uri.parse('/movie/${movieId}/translations');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      MovieMovieIdTranslationsGet$Response,
      MovieMovieIdTranslationsGet$Response
    >($request);
  }

  @override
  Future<Response<MovieMovieIdVideosGet$Response>> _movieMovieIdVideosGet({
    required int? movieId,
    String? language,
  }) {
    final Uri $url = Uri.parse('/movie/${movieId}/videos');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<MovieMovieIdVideosGet$Response, MovieMovieIdVideosGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<MovieMovieIdWatchProvidersGet$Response>>
  _movieMovieIdWatchProvidersGet({required int? movieId}) {
    final Uri $url = Uri.parse('/movie/${movieId}/watch/providers');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      MovieMovieIdWatchProvidersGet$Response,
      MovieMovieIdWatchProvidersGet$Response
    >($request);
  }

  @override
  Future<Response<MovieMovieIdRatingPost$Response>> _movieMovieIdRatingPost({
    required int? movieId,
    String? guestSessionId,
    String? sessionId,
    String? contentType,
    required MovieMovieIdRatingPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/movie/${movieId}/rating');
    final Map<String, dynamic> $params = <String, dynamic>{
      'guest_session_id': guestSessionId,
      'session_id': sessionId,
    };
    final Map<String, String> $headers = {
      if (contentType != null) 'Content-Type': contentType,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
      headers: $headers,
    );
    return client
        .send<MovieMovieIdRatingPost$Response, MovieMovieIdRatingPost$Response>(
          $request,
        );
  }

  @override
  Future<Response<MovieMovieIdRatingDelete$Response>>
  _movieMovieIdRatingDelete({
    required int? movieId,
    String? contentType,
    String? guestSessionId,
    String? sessionId,
  }) {
    final Uri $url = Uri.parse('/movie/${movieId}/rating');
    final Map<String, dynamic> $params = <String, dynamic>{
      'guest_session_id': guestSessionId,
      'session_id': sessionId,
    };
    final Map<String, String> $headers = {
      if (contentType != null) 'Content-Type': contentType,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<
      MovieMovieIdRatingDelete$Response,
      MovieMovieIdRatingDelete$Response
    >($request);
  }

  @override
  Future<Response<NetworkNetworkIdGet$Response>> _networkNetworkIdGet({
    required int? networkId,
  }) {
    final Uri $url = Uri.parse('/network/${networkId}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client
        .send<NetworkNetworkIdGet$Response, NetworkNetworkIdGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<NetworkNetworkIdAlternativeNamesGet$Response>>
  _networkNetworkIdAlternativeNamesGet({required int? networkId}) {
    final Uri $url = Uri.parse('/network/${networkId}/alternative_names');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      NetworkNetworkIdAlternativeNamesGet$Response,
      NetworkNetworkIdAlternativeNamesGet$Response
    >($request);
  }

  @override
  Future<Response<NetworkNetworkIdImagesGet$Response>>
  _networkNetworkIdImagesGet({required int? networkId}) {
    final Uri $url = Uri.parse('/network/${networkId}/images');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      NetworkNetworkIdImagesGet$Response,
      NetworkNetworkIdImagesGet$Response
    >($request);
  }

  @override
  Future<Response<PersonPopularGet$Response>> _personPopularGet({
    String? language,
    int? page,
  }) {
    final Uri $url = Uri.parse('/person/popular');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<PersonPopularGet$Response, PersonPopularGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<PersonPersonIdGet$Response>> _personPersonIdGet({
    required int? personId,
    String? appendToResponse,
    String? language,
  }) {
    final Uri $url = Uri.parse('/person/${personId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'append_to_response': appendToResponse,
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<PersonPersonIdGet$Response, PersonPersonIdGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<PersonPersonIdChangesGet$Response>>
  _personPersonIdChangesGet({
    required int? personId,
    String? endDate,
    int? page,
    String? startDate,
  }) {
    final Uri $url = Uri.parse('/person/${personId}/changes');
    final Map<String, dynamic> $params = <String, dynamic>{
      'end_date': endDate,
      'page': page,
      'start_date': startDate,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      PersonPersonIdChangesGet$Response,
      PersonPersonIdChangesGet$Response
    >($request);
  }

  @override
  Future<Response<PersonPersonIdCombinedCreditsGet$Response>>
  _personPersonIdCombinedCreditsGet({
    required String? personId,
    String? language,
  }) {
    final Uri $url = Uri.parse('/person/${personId}/combined_credits');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      PersonPersonIdCombinedCreditsGet$Response,
      PersonPersonIdCombinedCreditsGet$Response
    >($request);
  }

  @override
  Future<Response<PersonPersonIdExternalIdsGet$Response>>
  _personPersonIdExternalIdsGet({required int? personId}) {
    final Uri $url = Uri.parse('/person/${personId}/external_ids');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      PersonPersonIdExternalIdsGet$Response,
      PersonPersonIdExternalIdsGet$Response
    >($request);
  }

  @override
  Future<Response<PersonPersonIdImagesGet$Response>> _personPersonIdImagesGet({
    required int? personId,
  }) {
    final Uri $url = Uri.parse('/person/${personId}/images');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      PersonPersonIdImagesGet$Response,
      PersonPersonIdImagesGet$Response
    >($request);
  }

  @override
  Future<Response<PersonLatestGet$Response>> _personLatestGet() {
    final Uri $url = Uri.parse('/person/latest');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<PersonLatestGet$Response, PersonLatestGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<PersonPersonIdMovieCreditsGet$Response>>
  _personPersonIdMovieCreditsGet({required int? personId, String? language}) {
    final Uri $url = Uri.parse('/person/${personId}/movie_credits');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      PersonPersonIdMovieCreditsGet$Response,
      PersonPersonIdMovieCreditsGet$Response
    >($request);
  }

  @override
  Future<Response<PersonPersonIdTvCreditsGet$Response>>
  _personPersonIdTvCreditsGet({required int? personId, String? language}) {
    final Uri $url = Uri.parse('/person/${personId}/tv_credits');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      PersonPersonIdTvCreditsGet$Response,
      PersonPersonIdTvCreditsGet$Response
    >($request);
  }

  @override
  Future<Response<PersonPersonIdTaggedImagesGet$Response>>
  _personPersonIdTaggedImagesGet({required int? personId, int? page}) {
    final Uri $url = Uri.parse('/person/${personId}/tagged_images');
    final Map<String, dynamic> $params = <String, dynamic>{'page': page};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      PersonPersonIdTaggedImagesGet$Response,
      PersonPersonIdTaggedImagesGet$Response
    >($request);
  }

  @override
  Future<Response<PersonPersonIdTranslationsGet$Response>>
  _personPersonIdTranslationsGet({required int? personId}) {
    final Uri $url = Uri.parse('/person/${personId}/translations');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      PersonPersonIdTranslationsGet$Response,
      PersonPersonIdTranslationsGet$Response
    >($request);
  }

  @override
  Future<Response<ReviewReviewIdGet$Response>> _reviewReviewIdGet({
    required String? reviewId,
  }) {
    final Uri $url = Uri.parse('/review/${reviewId}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<ReviewReviewIdGet$Response, ReviewReviewIdGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<SearchCollectionGet$Response>> _searchCollectionGet({
    required String? query,
    bool? includeAdult,
    String? language,
    int? page,
    String? region,
  }) {
    final Uri $url = Uri.parse('/search/collection');
    final Map<String, dynamic> $params = <String, dynamic>{
      'query': query,
      'include_adult': includeAdult,
      'language': language,
      'page': page,
      'region': region,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<SearchCollectionGet$Response, SearchCollectionGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<SearchCompanyGet$Response>> _searchCompanyGet({
    required String? query,
    int? page,
  }) {
    final Uri $url = Uri.parse('/search/company');
    final Map<String, dynamic> $params = <String, dynamic>{
      'query': query,
      'page': page,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<SearchCompanyGet$Response, SearchCompanyGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<SearchKeywordGet$Response>> _searchKeywordGet({
    required String? query,
    int? page,
  }) {
    final Uri $url = Uri.parse('/search/keyword');
    final Map<String, dynamic> $params = <String, dynamic>{
      'query': query,
      'page': page,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<SearchKeywordGet$Response, SearchKeywordGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<SearchMovieGet$Response>> _searchMovieGet({
    required String? query,
    bool? includeAdult,
    String? language,
    String? primaryReleaseYear,
    int? page,
    String? region,
    String? year,
  }) {
    final Uri $url = Uri.parse('/search/movie');
    final Map<String, dynamic> $params = <String, dynamic>{
      'query': query,
      'include_adult': includeAdult,
      'language': language,
      'primary_release_year': primaryReleaseYear,
      'page': page,
      'region': region,
      'year': year,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<SearchMovieGet$Response, SearchMovieGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<SearchMultiGet$Response>> _searchMultiGet({
    required String? query,
    bool? includeAdult,
    String? language,
    int? page,
  }) {
    final Uri $url = Uri.parse('/search/multi');
    final Map<String, dynamic> $params = <String, dynamic>{
      'query': query,
      'include_adult': includeAdult,
      'language': language,
      'page': page,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<SearchMultiGet$Response, SearchMultiGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<SearchPersonGet$Response>> _searchPersonGet({
    required String? query,
    bool? includeAdult,
    String? language,
    int? page,
  }) {
    final Uri $url = Uri.parse('/search/person');
    final Map<String, dynamic> $params = <String, dynamic>{
      'query': query,
      'include_adult': includeAdult,
      'language': language,
      'page': page,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<SearchPersonGet$Response, SearchPersonGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<SearchTvGet$Response>> _searchTvGet({
    required String? query,
    int? firstAirDateYear,
    bool? includeAdult,
    String? language,
    int? page,
    int? year,
  }) {
    final Uri $url = Uri.parse('/search/tv');
    final Map<String, dynamic> $params = <String, dynamic>{
      'query': query,
      'first_air_date_year': firstAirDateYear,
      'include_adult': includeAdult,
      'language': language,
      'page': page,
      'year': year,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<SearchTvGet$Response, SearchTvGet$Response>($request);
  }

  @override
  Future<Response<TrendingAllTimeWindowGet$Response>>
  _trendingAllTimeWindowGet({required String? timeWindow, String? language}) {
    final Uri $url = Uri.parse('/trending/all/${timeWindow}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      TrendingAllTimeWindowGet$Response,
      TrendingAllTimeWindowGet$Response
    >($request);
  }

  @override
  Future<Response<TrendingMovieTimeWindowGet$Response>>
  _trendingMovieTimeWindowGet({required String? timeWindow, String? language}) {
    final Uri $url = Uri.parse('/trending/movie/${timeWindow}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      TrendingMovieTimeWindowGet$Response,
      TrendingMovieTimeWindowGet$Response
    >($request);
  }

  @override
  Future<Response<TrendingPersonTimeWindowGet$Response>>
  _trendingPersonTimeWindowGet({
    required String? timeWindow,
    String? language,
  }) {
    final Uri $url = Uri.parse('/trending/person/${timeWindow}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      TrendingPersonTimeWindowGet$Response,
      TrendingPersonTimeWindowGet$Response
    >($request);
  }

  @override
  Future<Response<TrendingTvTimeWindowGet$Response>> _trendingTvTimeWindowGet({
    required String? timeWindow,
    String? language,
  }) {
    final Uri $url = Uri.parse('/trending/tv/${timeWindow}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      TrendingTvTimeWindowGet$Response,
      TrendingTvTimeWindowGet$Response
    >($request);
  }

  @override
  Future<Response<TvAiringTodayGet$Response>> _tvAiringTodayGet({
    String? language,
    int? page,
    String? timezone,
  }) {
    final Uri $url = Uri.parse('/tv/airing_today');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
      'timezone': timezone,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<TvAiringTodayGet$Response, TvAiringTodayGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<TvOnTheAirGet$Response>> _tvOnTheAirGet({
    String? language,
    int? page,
    String? timezone,
  }) {
    final Uri $url = Uri.parse('/tv/on_the_air');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
      'timezone': timezone,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<TvOnTheAirGet$Response, TvOnTheAirGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<TvPopularGet$Response>> _tvPopularGet({
    String? language,
    int? page,
  }) {
    final Uri $url = Uri.parse('/tv/popular');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<TvPopularGet$Response, TvPopularGet$Response>($request);
  }

  @override
  Future<Response<TvTopRatedGet$Response>> _tvTopRatedGet({
    String? language,
    int? page,
  }) {
    final Uri $url = Uri.parse('/tv/top_rated');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<TvTopRatedGet$Response, TvTopRatedGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<TvSeriesIdGet$Response>> _tvSeriesIdGet({
    required int? seriesId,
    String? appendToResponse,
    String? language,
  }) {
    final Uri $url = Uri.parse('/tv/${seriesId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'append_to_response': appendToResponse,
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<TvSeriesIdGet$Response, TvSeriesIdGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<TvSeriesIdAccountStatesGet$Response>>
  _tvSeriesIdAccountStatesGet({
    required int? seriesId,
    String? sessionId,
    String? guestSessionId,
  }) {
    final Uri $url = Uri.parse('/tv/${seriesId}/account_states');
    final Map<String, dynamic> $params = <String, dynamic>{
      'session_id': sessionId,
      'guest_session_id': guestSessionId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      TvSeriesIdAccountStatesGet$Response,
      TvSeriesIdAccountStatesGet$Response
    >($request);
  }

  @override
  Future<Response<TvSeriesIdAggregateCreditsGet$Response>>
  _tvSeriesIdAggregateCreditsGet({required int? seriesId, String? language}) {
    final Uri $url = Uri.parse('/tv/${seriesId}/aggregate_credits');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      TvSeriesIdAggregateCreditsGet$Response,
      TvSeriesIdAggregateCreditsGet$Response
    >($request);
  }

  @override
  Future<Response<TvSeriesIdAlternativeTitlesGet$Response>>
  _tvSeriesIdAlternativeTitlesGet({required int? seriesId}) {
    final Uri $url = Uri.parse('/tv/${seriesId}/alternative_titles');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      TvSeriesIdAlternativeTitlesGet$Response,
      TvSeriesIdAlternativeTitlesGet$Response
    >($request);
  }

  @override
  Future<Response<TvSeriesIdChangesGet$Response>> _tvSeriesIdChangesGet({
    required int? seriesId,
    String? endDate,
    int? page,
    String? startDate,
  }) {
    final Uri $url = Uri.parse('/tv/${seriesId}/changes');
    final Map<String, dynamic> $params = <String, dynamic>{
      'end_date': endDate,
      'page': page,
      'start_date': startDate,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<TvSeriesIdChangesGet$Response, TvSeriesIdChangesGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<TvSeriesIdContentRatingsGet$Response>>
  _tvSeriesIdContentRatingsGet({required int? seriesId}) {
    final Uri $url = Uri.parse('/tv/${seriesId}/content_ratings');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      TvSeriesIdContentRatingsGet$Response,
      TvSeriesIdContentRatingsGet$Response
    >($request);
  }

  @override
  Future<Response<TvSeriesIdCreditsGet$Response>> _tvSeriesIdCreditsGet({
    required int? seriesId,
    String? language,
  }) {
    final Uri $url = Uri.parse('/tv/${seriesId}/credits');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<TvSeriesIdCreditsGet$Response, TvSeriesIdCreditsGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<TvSeriesIdEpisodeGroupsGet$Response>>
  _tvSeriesIdEpisodeGroupsGet({required int? seriesId}) {
    final Uri $url = Uri.parse('/tv/${seriesId}/episode_groups');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      TvSeriesIdEpisodeGroupsGet$Response,
      TvSeriesIdEpisodeGroupsGet$Response
    >($request);
  }

  @override
  Future<Response<TvSeriesIdExternalIdsGet$Response>>
  _tvSeriesIdExternalIdsGet({required int? seriesId}) {
    final Uri $url = Uri.parse('/tv/${seriesId}/external_ids');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      TvSeriesIdExternalIdsGet$Response,
      TvSeriesIdExternalIdsGet$Response
    >($request);
  }

  @override
  Future<Response<TvSeriesIdImagesGet$Response>> _tvSeriesIdImagesGet({
    required int? seriesId,
    String? includeImageLanguage,
    String? language,
  }) {
    final Uri $url = Uri.parse('/tv/${seriesId}/images');
    final Map<String, dynamic> $params = <String, dynamic>{
      'include_image_language': includeImageLanguage,
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<TvSeriesIdImagesGet$Response, TvSeriesIdImagesGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<TvSeriesIdKeywordsGet$Response>> _tvSeriesIdKeywordsGet({
    required int? seriesId,
  }) {
    final Uri $url = Uri.parse('/tv/${seriesId}/keywords');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client
        .send<TvSeriesIdKeywordsGet$Response, TvSeriesIdKeywordsGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<TvLatestGet$Response>> _tvLatestGet() {
    final Uri $url = Uri.parse('/tv/latest');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<TvLatestGet$Response, TvLatestGet$Response>($request);
  }

  @override
  Future<Response<TvSeriesIdListsGet$Response>> _tvSeriesIdListsGet({
    required int? seriesId,
    String? language,
    int? page,
  }) {
    final Uri $url = Uri.parse('/tv/${seriesId}/lists');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<TvSeriesIdListsGet$Response, TvSeriesIdListsGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<TvSeriesIdRecommendationsGet$Response>>
  _tvSeriesIdRecommendationsGet({
    required int? seriesId,
    String? language,
    int? page,
  }) {
    final Uri $url = Uri.parse('/tv/${seriesId}/recommendations');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      TvSeriesIdRecommendationsGet$Response,
      TvSeriesIdRecommendationsGet$Response
    >($request);
  }

  @override
  Future<Response<TvSeriesIdReviewsGet$Response>> _tvSeriesIdReviewsGet({
    required int? seriesId,
    String? language,
    int? page,
  }) {
    final Uri $url = Uri.parse('/tv/${seriesId}/reviews');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<TvSeriesIdReviewsGet$Response, TvSeriesIdReviewsGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<TvSeriesIdScreenedTheatricallyGet$Response>>
  _tvSeriesIdScreenedTheatricallyGet({required int? seriesId}) {
    final Uri $url = Uri.parse('/tv/${seriesId}/screened_theatrically');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      TvSeriesIdScreenedTheatricallyGet$Response,
      TvSeriesIdScreenedTheatricallyGet$Response
    >($request);
  }

  @override
  Future<Response<TvSeriesIdSimilarGet$Response>> _tvSeriesIdSimilarGet({
    required String? seriesId,
    String? language,
    int? page,
  }) {
    final Uri $url = Uri.parse('/tv/${seriesId}/similar');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<TvSeriesIdSimilarGet$Response, TvSeriesIdSimilarGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<TvSeriesIdTranslationsGet$Response>>
  _tvSeriesIdTranslationsGet({required int? seriesId}) {
    final Uri $url = Uri.parse('/tv/${seriesId}/translations');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      TvSeriesIdTranslationsGet$Response,
      TvSeriesIdTranslationsGet$Response
    >($request);
  }

  @override
  Future<Response<TvSeriesIdVideosGet$Response>> _tvSeriesIdVideosGet({
    required int? seriesId,
    String? includeVideoLanguage,
    String? language,
  }) {
    final Uri $url = Uri.parse('/tv/${seriesId}/videos');
    final Map<String, dynamic> $params = <String, dynamic>{
      'include_video_language': includeVideoLanguage,
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<TvSeriesIdVideosGet$Response, TvSeriesIdVideosGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<TvSeriesIdWatchProvidersGet$Response>>
  _tvSeriesIdWatchProvidersGet({required int? seriesId}) {
    final Uri $url = Uri.parse('/tv/${seriesId}/watch/providers');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      TvSeriesIdWatchProvidersGet$Response,
      TvSeriesIdWatchProvidersGet$Response
    >($request);
  }

  @override
  Future<Response<TvSeriesIdRatingPost$Response>> _tvSeriesIdRatingPost({
    required int? seriesId,
    String? guestSessionId,
    String? sessionId,
    String? contentType,
    required TvSeriesIdRatingPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/tv/${seriesId}/rating');
    final Map<String, dynamic> $params = <String, dynamic>{
      'guest_session_id': guestSessionId,
      'session_id': sessionId,
    };
    final Map<String, String> $headers = {
      if (contentType != null) 'Content-Type': contentType,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
      headers: $headers,
    );
    return client
        .send<TvSeriesIdRatingPost$Response, TvSeriesIdRatingPost$Response>(
          $request,
        );
  }

  @override
  Future<Response<TvSeriesIdRatingDelete$Response>> _tvSeriesIdRatingDelete({
    required int? seriesId,
    String? contentType,
    String? guestSessionId,
    String? sessionId,
  }) {
    final Uri $url = Uri.parse('/tv/${seriesId}/rating');
    final Map<String, dynamic> $params = <String, dynamic>{
      'guest_session_id': guestSessionId,
      'session_id': sessionId,
    };
    final Map<String, String> $headers = {
      if (contentType != null) 'Content-Type': contentType,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client
        .send<TvSeriesIdRatingDelete$Response, TvSeriesIdRatingDelete$Response>(
          $request,
        );
  }

  @override
  Future<Response<TvSeriesIdSeasonSeasonNumberGet$Response>>
  _tvSeriesIdSeasonSeasonNumberGet({
    required int? seriesId,
    required int? seasonNumber,
    String? appendToResponse,
    String? language,
  }) {
    final Uri $url = Uri.parse('/tv/${seriesId}/season/${seasonNumber}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'append_to_response': appendToResponse,
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      TvSeriesIdSeasonSeasonNumberGet$Response,
      TvSeriesIdSeasonSeasonNumberGet$Response
    >($request);
  }

  @override
  Future<Response<TvSeriesIdSeasonSeasonNumberAccountStatesGet$Response>>
  _tvSeriesIdSeasonSeasonNumberAccountStatesGet({
    required int? seriesId,
    String? sessionId,
    String? guestSessionId,
    required int? seasonNumber,
  }) {
    final Uri $url = Uri.parse(
      '/tv/${seriesId}/season/${seasonNumber}/account_states',
    );
    final Map<String, dynamic> $params = <String, dynamic>{
      'session_id': sessionId,
      'guest_session_id': guestSessionId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      TvSeriesIdSeasonSeasonNumberAccountStatesGet$Response,
      TvSeriesIdSeasonSeasonNumberAccountStatesGet$Response
    >($request);
  }

  @override
  Future<Response<TvSeriesIdSeasonSeasonNumberAggregateCreditsGet$Response>>
  _tvSeriesIdSeasonSeasonNumberAggregateCreditsGet({
    required int? seriesId,
    String? language,
    required int? seasonNumber,
  }) {
    final Uri $url = Uri.parse(
      '/tv/${seriesId}/season/${seasonNumber}/aggregate_credits',
    );
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      TvSeriesIdSeasonSeasonNumberAggregateCreditsGet$Response,
      TvSeriesIdSeasonSeasonNumberAggregateCreditsGet$Response
    >($request);
  }

  @override
  Future<Response<TvSeasonSeasonIdChangesGet$Response>>
  _tvSeasonSeasonIdChangesGet({
    String? endDate,
    int? page,
    String? startDate,
    required int? seasonId,
  }) {
    final Uri $url = Uri.parse('/tv/season/${seasonId}/changes');
    final Map<String, dynamic> $params = <String, dynamic>{
      'end_date': endDate,
      'page': page,
      'start_date': startDate,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      TvSeasonSeasonIdChangesGet$Response,
      TvSeasonSeasonIdChangesGet$Response
    >($request);
  }

  @override
  Future<Response<TvSeriesIdSeasonSeasonNumberCreditsGet$Response>>
  _tvSeriesIdSeasonSeasonNumberCreditsGet({
    required int? seriesId,
    required int? seasonNumber,
    String? language,
  }) {
    final Uri $url = Uri.parse(
      '/tv/${seriesId}/season/${seasonNumber}/credits',
    );
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      TvSeriesIdSeasonSeasonNumberCreditsGet$Response,
      TvSeriesIdSeasonSeasonNumberCreditsGet$Response
    >($request);
  }

  @override
  Future<Response<TvSeriesIdSeasonSeasonNumberExternalIdsGet$Response>>
  _tvSeriesIdSeasonSeasonNumberExternalIdsGet({
    required int? seriesId,
    required int? seasonNumber,
  }) {
    final Uri $url = Uri.parse(
      '/tv/${seriesId}/season/${seasonNumber}/external_ids',
    );
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      TvSeriesIdSeasonSeasonNumberExternalIdsGet$Response,
      TvSeriesIdSeasonSeasonNumberExternalIdsGet$Response
    >($request);
  }

  @override
  Future<Response<TvSeriesIdSeasonSeasonNumberImagesGet$Response>>
  _tvSeriesIdSeasonSeasonNumberImagesGet({
    required int? seriesId,
    String? includeImageLanguage,
    String? language,
    required int? seasonNumber,
  }) {
    final Uri $url = Uri.parse('/tv/${seriesId}/season/${seasonNumber}/images');
    final Map<String, dynamic> $params = <String, dynamic>{
      'include_image_language': includeImageLanguage,
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      TvSeriesIdSeasonSeasonNumberImagesGet$Response,
      TvSeriesIdSeasonSeasonNumberImagesGet$Response
    >($request);
  }

  @override
  Future<Response<TvSeriesIdSeasonSeasonNumberTranslationsGet$Response>>
  _tvSeriesIdSeasonSeasonNumberTranslationsGet({
    required int? seriesId,
    required int? seasonNumber,
  }) {
    final Uri $url = Uri.parse(
      '/tv/${seriesId}/season/${seasonNumber}/translations',
    );
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      TvSeriesIdSeasonSeasonNumberTranslationsGet$Response,
      TvSeriesIdSeasonSeasonNumberTranslationsGet$Response
    >($request);
  }

  @override
  Future<Response<TvSeriesIdSeasonSeasonNumberVideosGet$Response>>
  _tvSeriesIdSeasonSeasonNumberVideosGet({
    required int? seriesId,
    String? includeVideoLanguage,
    String? language,
    required int? seasonNumber,
  }) {
    final Uri $url = Uri.parse('/tv/${seriesId}/season/${seasonNumber}/videos');
    final Map<String, dynamic> $params = <String, dynamic>{
      'include_video_language': includeVideoLanguage,
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      TvSeriesIdSeasonSeasonNumberVideosGet$Response,
      TvSeriesIdSeasonSeasonNumberVideosGet$Response
    >($request);
  }

  @override
  Future<Response<TvSeriesIdSeasonSeasonNumberWatchProvidersGet$Response>>
  _tvSeriesIdSeasonSeasonNumberWatchProvidersGet({
    required int? seriesId,
    String? language,
    required int? seasonNumber,
  }) {
    final Uri $url = Uri.parse(
      '/tv/${seriesId}/season/${seasonNumber}/watch/providers',
    );
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      TvSeriesIdSeasonSeasonNumberWatchProvidersGet$Response,
      TvSeriesIdSeasonSeasonNumberWatchProvidersGet$Response
    >($request);
  }

  @override
  Future<Response<TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberGet$Response>>
  _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberGet({
    required int? seriesId,
    required int? seasonNumber,
    required int? episodeNumber,
    String? appendToResponse,
    String? language,
  }) {
    final Uri $url = Uri.parse(
      '/tv/${seriesId}/season/${seasonNumber}/episode/${episodeNumber}',
    );
    final Map<String, dynamic> $params = <String, dynamic>{
      'append_to_response': appendToResponse,
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberGet$Response,
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberGet$Response
    >($request);
  }

  @override
  Future<
    Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberAccountStatesGet$Response
    >
  >
  _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberAccountStatesGet({
    required int? seriesId,
    String? sessionId,
    required int? seasonNumber,
    required int? episodeNumber,
    String? guestSessionId,
  }) {
    final Uri $url = Uri.parse(
      '/tv/${seriesId}/season/${seasonNumber}/episode/${episodeNumber}/account_states',
    );
    final Map<String, dynamic> $params = <String, dynamic>{
      'session_id': sessionId,
      'guest_session_id': guestSessionId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberAccountStatesGet$Response,
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberAccountStatesGet$Response
    >($request);
  }

  @override
  Future<Response<TvEpisodeEpisodeIdChangesGet$Response>>
  _tvEpisodeEpisodeIdChangesGet({required int? episodeId}) {
    final Uri $url = Uri.parse('/tv/episode/${episodeId}/changes');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      TvEpisodeEpisodeIdChangesGet$Response,
      TvEpisodeEpisodeIdChangesGet$Response
    >($request);
  }

  @override
  Future<
    Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberCreditsGet$Response
    >
  >
  _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberCreditsGet({
    required int? seriesId,
    required int? seasonNumber,
    String? language,
    required int? episodeNumber,
  }) {
    final Uri $url = Uri.parse(
      '/tv/${seriesId}/season/${seasonNumber}/episode/${episodeNumber}/credits',
    );
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberCreditsGet$Response,
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberCreditsGet$Response
    >($request);
  }

  @override
  Future<
    Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberExternalIdsGet$Response
    >
  >
  _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberExternalIdsGet({
    required int? seriesId,
    required int? seasonNumber,
    required String? episodeNumber,
  }) {
    final Uri $url = Uri.parse(
      '/tv/${seriesId}/season/${seasonNumber}/episode/${episodeNumber}/external_ids',
    );
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberExternalIdsGet$Response,
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberExternalIdsGet$Response
    >($request);
  }

  @override
  Future<
    Response<TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberImagesGet$Response>
  >
  _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberImagesGet({
    required int? seriesId,
    String? includeImageLanguage,
    String? language,
    required int? seasonNumber,
    required int? episodeNumber,
  }) {
    final Uri $url = Uri.parse(
      '/tv/${seriesId}/season/${seasonNumber}/episode/${episodeNumber}/images',
    );
    final Map<String, dynamic> $params = <String, dynamic>{
      'include_image_language': includeImageLanguage,
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberImagesGet$Response,
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberImagesGet$Response
    >($request);
  }

  @override
  Future<
    Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberTranslationsGet$Response
    >
  >
  _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberTranslationsGet({
    required int? seriesId,
    required int? seasonNumber,
    required int? episodeNumber,
  }) {
    final Uri $url = Uri.parse(
      '/tv/${seriesId}/season/${seasonNumber}/episode/${episodeNumber}/translations',
    );
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberTranslationsGet$Response,
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberTranslationsGet$Response
    >($request);
  }

  @override
  Future<
    Response<TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberVideosGet$Response>
  >
  _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberVideosGet({
    required int? seriesId,
    String? includeVideoLanguage,
    String? language,
    required int? seasonNumber,
    required int? episodeNumber,
  }) {
    final Uri $url = Uri.parse(
      '/tv/${seriesId}/season/${seasonNumber}/episode/${episodeNumber}/videos',
    );
    final Map<String, dynamic> $params = <String, dynamic>{
      'include_video_language': includeVideoLanguage,
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberVideosGet$Response,
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberVideosGet$Response
    >($request);
  }

  @override
  Future<
    Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingPost$Response
    >
  >
  _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingPost({
    required int? seriesId,
    String? guestSessionId,
    String? sessionId,
    String? contentType,
    required int? seasonNumber,
    required int? episodeNumber,
    required TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingPost$RequestBody?
    body,
  }) {
    final Uri $url = Uri.parse(
      '/tv/${seriesId}/season/${seasonNumber}/episode/${episodeNumber}/rating',
    );
    final Map<String, dynamic> $params = <String, dynamic>{
      'guest_session_id': guestSessionId,
      'session_id': sessionId,
    };
    final Map<String, String> $headers = {
      if (contentType != null) 'Content-Type': contentType,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
      headers: $headers,
    );
    return client.send<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingPost$Response,
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingPost$Response
    >($request);
  }

  @override
  Future<
    Response<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingDelete$Response
    >
  >
  _tvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingDelete({
    required int? seriesId,
    String? contentType,
    String? guestSessionId,
    String? sessionId,
    required int? seasonNumber,
    required int? episodeNumber,
  }) {
    final Uri $url = Uri.parse(
      '/tv/${seriesId}/season/${seasonNumber}/episode/${episodeNumber}/rating',
    );
    final Map<String, dynamic> $params = <String, dynamic>{
      'guest_session_id': guestSessionId,
      'session_id': sessionId,
    };
    final Map<String, String> $headers = {
      if (contentType != null) 'Content-Type': contentType,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingDelete$Response,
      TvSeriesIdSeasonSeasonNumberEpisodeEpisodeNumberRatingDelete$Response
    >($request);
  }

  @override
  Future<Response<TvEpisodeGroupTvEpisodeGroupIdGet$Response>>
  _tvEpisodeGroupTvEpisodeGroupIdGet({required String? tvEpisodeGroupId}) {
    final Uri $url = Uri.parse('/tv/episode_group/${tvEpisodeGroupId}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      TvEpisodeGroupTvEpisodeGroupIdGet$Response,
      TvEpisodeGroupTvEpisodeGroupIdGet$Response
    >($request);
  }

  @override
  Future<Response<WatchProvidersRegionsGet$Response>>
  _watchProvidersRegionsGet({String? language}) {
    final Uri $url = Uri.parse('/watch/providers/regions');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      WatchProvidersRegionsGet$Response,
      WatchProvidersRegionsGet$Response
    >($request);
  }

  @override
  Future<Response<WatchProvidersMovieGet$Response>> _watchProvidersMovieGet({
    String? language,
    String? watchRegion,
  }) {
    final Uri $url = Uri.parse('/watch/providers/movie');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'watch_region': watchRegion,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<WatchProvidersMovieGet$Response, WatchProvidersMovieGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<WatchProvidersTvGet$Response>> _watchProvidersTvGet({
    String? language,
    String? watchRegion,
  }) {
    final Uri $url = Uri.parse('/watch/providers/tv');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'watch_region': watchRegion,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<WatchProvidersTvGet$Response, WatchProvidersTvGet$Response>(
          $request,
        );
  }
}
