# flutter_tmdb_api

A fully typed Flutter client for the TMDB API v3, built with Chopper and generated from the official OpenAPI spec.

## Installation

Add this to your `pubspec.yaml`:
```yaml
dependencies:
  flutter_tmdb_api:
    git:
      url: https://github.com/BlueRoyal/flutter_tmdb_api.git
      ref: main
```

## Setup
```dart
import 'package:flutter_tmdb_api/flutter_tmdb_api.dart';

final tmdb = TmdbApi(apiReadAccessToken: 'YOUR_READ_ACCESS_TOKEN');
```

Get your Read Access Token at https://www.themoviedb.org/settings/api.

## Usage
```dart
// Popular movies
final popular = await tmdb.service.moviePopularGet(language: 'en-US', page: 1);

// Movie details
final details = await tmdb.service.movieMovieIdGet(movieId: 550, language: 'en-US');

// Search
final results = await tmdb.service.searchMovieGet(query: 'Matrix', language: 'en-US');

// Trending
final trending = await tmdb.service.trendingMovieTimeWindowGet(timeWindow: 'week');

// TV shows
final tv = await tmdb.service.tvPopularGet(language: 'en-US');

// Discover with filters
final discover = await tmdb.service.discoverMovieGet(
  language: 'en-US',
  sortBy: 'popularity.desc',
  withGenres: '28',
  primaryReleaseYear: 2024,
);

// Dispose when done
tmdb.dispose();
```

## Available endpoints

Movies, TV shows, people, search, discover, trending, genres, credits, reviews, watch providers, authentication, lists, keywords, collections, certifications, and more.

All endpoints from the TMDB API v3 are available through `tmdb.service`.
