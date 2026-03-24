import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum AccountAccountIdFavoriteMoviesGetSortBy {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('created_at.asc')
  createdAtAsc('created_at.asc'),
  @JsonValue('created_at.desc')
  createdAtDesc('created_at.desc');

  final String? value;

  const AccountAccountIdFavoriteMoviesGetSortBy(this.value);
}

enum AccountAccountIdFavoriteTvGetSortBy {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('created_at.asc')
  createdAtAsc('created_at.asc'),
  @JsonValue('created_at.desc')
  createdAtDesc('created_at.desc');

  final String? value;

  const AccountAccountIdFavoriteTvGetSortBy(this.value);
}

enum AccountAccountIdRatedMoviesGetSortBy {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('created_at.asc')
  createdAtAsc('created_at.asc'),
  @JsonValue('created_at.desc')
  createdAtDesc('created_at.desc');

  final String? value;

  const AccountAccountIdRatedMoviesGetSortBy(this.value);
}

enum AccountAccountIdRatedTvGetSortBy {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('created_at.asc')
  createdAtAsc('created_at.asc'),
  @JsonValue('created_at.desc')
  createdAtDesc('created_at.desc');

  final String? value;

  const AccountAccountIdRatedTvGetSortBy(this.value);
}

enum AccountAccountIdRatedTvEpisodesGetSortBy {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('created_at.asc')
  createdAtAsc('created_at.asc'),
  @JsonValue('created_at.desc')
  createdAtDesc('created_at.desc');

  final String? value;

  const AccountAccountIdRatedTvEpisodesGetSortBy(this.value);
}

enum AccountAccountIdWatchlistMoviesGetSortBy {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('created_at.asc')
  createdAtAsc('created_at.asc'),
  @JsonValue('created_at.desc')
  createdAtDesc('created_at.desc');

  final String? value;

  const AccountAccountIdWatchlistMoviesGetSortBy(this.value);
}

enum AccountAccountIdWatchlistTvGetSortBy {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('created_at.asc')
  createdAtAsc('created_at.asc'),
  @JsonValue('created_at.desc')
  createdAtDesc('created_at.desc');

  final String? value;

  const AccountAccountIdWatchlistTvGetSortBy(this.value);
}

enum DiscoverMovieGetSortBy {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('original_title.asc')
  originalTitleAsc('original_title.asc'),
  @JsonValue('original_title.desc')
  originalTitleDesc('original_title.desc'),
  @JsonValue('popularity.asc')
  popularityAsc('popularity.asc'),
  @JsonValue('popularity.desc')
  popularityDesc('popularity.desc'),
  @JsonValue('revenue.asc')
  revenueAsc('revenue.asc'),
  @JsonValue('revenue.desc')
  revenueDesc('revenue.desc'),
  @JsonValue('primary_release_date.asc')
  primaryReleaseDateAsc('primary_release_date.asc'),
  @JsonValue('title.asc')
  titleAsc('title.asc'),
  @JsonValue('title.desc')
  titleDesc('title.desc'),
  @JsonValue('primary_release_date.desc')
  primaryReleaseDateDesc('primary_release_date.desc'),
  @JsonValue('vote_average.asc')
  voteAverageAsc('vote_average.asc'),
  @JsonValue('vote_average.desc')
  voteAverageDesc('vote_average.desc'),
  @JsonValue('vote_count.asc')
  voteCountAsc('vote_count.asc'),
  @JsonValue('vote_count.desc')
  voteCountDesc('vote_count.desc');

  final String? value;

  const DiscoverMovieGetSortBy(this.value);
}

enum DiscoverTvGetSortBy {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('first_air_date.asc')
  firstAirDateAsc('first_air_date.asc'),
  @JsonValue('first_air_date.desc')
  firstAirDateDesc('first_air_date.desc'),
  @JsonValue('name.asc')
  nameAsc('name.asc'),
  @JsonValue('name.desc')
  nameDesc('name.desc'),
  @JsonValue('original_name.asc')
  originalNameAsc('original_name.asc'),
  @JsonValue('original_name.desc')
  originalNameDesc('original_name.desc'),
  @JsonValue('popularity.asc')
  popularityAsc('popularity.asc'),
  @JsonValue('popularity.desc')
  popularityDesc('popularity.desc'),
  @JsonValue('vote_average.asc')
  voteAverageAsc('vote_average.asc'),
  @JsonValue('vote_average.desc')
  voteAverageDesc('vote_average.desc'),
  @JsonValue('vote_count.asc')
  voteCountAsc('vote_count.asc'),
  @JsonValue('vote_count.desc')
  voteCountDesc('vote_count.desc');

  final String? value;

  const DiscoverTvGetSortBy(this.value);
}

enum FindExternalIdGetExternalSource {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('imdb_id')
  imdbId('imdb_id'),
  @JsonValue('facebook_id')
  facebookId('facebook_id'),
  @JsonValue('instagram_id')
  instagramId('instagram_id'),
  @JsonValue('tvdb_id')
  tvdbId('tvdb_id'),
  @JsonValue('tiktok_id')
  tiktokId('tiktok_id'),
  @JsonValue('twitter_id')
  twitterId('twitter_id'),
  @JsonValue('wikidata_id')
  wikidataId('wikidata_id'),
  @JsonValue('youtube_id')
  youtubeId('youtube_id');

  final String? value;

  const FindExternalIdGetExternalSource(this.value);
}

enum GuestSessionGuestSessionIdRatedMoviesGetSortBy {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('created_at.asc')
  createdAtAsc('created_at.asc'),
  @JsonValue('created_at.desc')
  createdAtDesc('created_at.desc');

  final String? value;

  const GuestSessionGuestSessionIdRatedMoviesGetSortBy(this.value);
}

enum GuestSessionGuestSessionIdRatedTvGetSortBy {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('created_at.asc')
  createdAtAsc('created_at.asc'),
  @JsonValue('created_at.desc')
  createdAtDesc('created_at.desc');

  final String? value;

  const GuestSessionGuestSessionIdRatedTvGetSortBy(this.value);
}

enum GuestSessionGuestSessionIdRatedTvEpisodesGetSortBy {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('created_at.asc')
  createdAtAsc('created_at.asc'),
  @JsonValue('created_at.desc')
  createdAtDesc('created_at.desc');

  final String? value;

  const GuestSessionGuestSessionIdRatedTvEpisodesGetSortBy(this.value);
}

enum TrendingAllTimeWindowGetTimeWindow {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('day')
  day('day'),
  @JsonValue('week')
  week('week');

  final String? value;

  const TrendingAllTimeWindowGetTimeWindow(this.value);
}

enum TrendingMovieTimeWindowGetTimeWindow {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('day')
  day('day'),
  @JsonValue('week')
  week('week');

  final String? value;

  const TrendingMovieTimeWindowGetTimeWindow(this.value);
}

enum TrendingPersonTimeWindowGetTimeWindow {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('day')
  day('day'),
  @JsonValue('week')
  week('week');

  final String? value;

  const TrendingPersonTimeWindowGetTimeWindow(this.value);
}

enum TrendingTvTimeWindowGetTimeWindow {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('day')
  day('day'),
  @JsonValue('week')
  week('week');

  final String? value;

  const TrendingTvTimeWindowGetTimeWindow(this.value);
}
