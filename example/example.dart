import 'package:flutter/material.dart';
import 'package:flutter_tmdb_api/flutter_tmdb_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TMDB API Example',
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const PopularMoviesScreen(),
    );
  }
}

// --- Popular Movies ---------------------------------------------------------

class PopularMoviesScreen extends StatefulWidget {
  const PopularMoviesScreen({super.key});

  @override
  State<PopularMoviesScreen> createState() => _PopularMoviesScreenState();
}

class _PopularMoviesScreenState extends State<PopularMoviesScreen> {
  final tmdb = TmdbApi(apiReadAccessToken: 'YOUR_READ_ACCESS_TOKEN');
  List<dynamic> _movies = [];
  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _fetchMovies();
  }

  Future<void> _fetchMovies() async {
    try {
      final response = await tmdb.service.moviePopularGet(
        language: 'de-DE',
        page: 1,
      );
      setState(() {
        _movies = response.body?.results ?? [];
        _loading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _loading = false;
      });
    }
  }

  @override
  void dispose() {
    tmdb.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Popular Movies')),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _error != null
          ? Center(child: Text('Error: $_error'))
          : ListView.builder(
        itemCount: _movies.length,
        itemBuilder: (context, index) {
          final movie = _movies[index];
          return ListTile(
            leading: movie.posterPath != null
                ? Image.network(
              'https://image.tmdb.org/t/p/w92${movie.posterPath}',
              width: 50,
              errorBuilder: (_, __, ___) =>
              const Icon(Icons.movie, size: 50),
            )
                : const Icon(Icons.movie, size: 50),
            title: Text(movie.title ?? 'Unknown'),
            subtitle: Text(
              movie.overview ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: movie.voteAverage != null
                ? Chip(label: Text('${movie.voteAverage}'))
                : null,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => MovieDetailScreen(
                  tmdb: tmdb,
                  movieId: movie.id!,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// --- Movie Detail -----------------------------------------------------------

class MovieDetailScreen extends StatefulWidget {
  final TmdbApi tmdb;
  final int movieId;

  const MovieDetailScreen({
    super.key,
    required this.tmdb,
    required this.movieId,
  });

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  dynamic _movie;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _fetchDetails();
  }

  Future<void> _fetchDetails() async {
    try {
      final response = await widget.tmdb.service.movieMovieIdGet(
        movieId: widget.movieId,
        language: 'de-DE',
      );
      setState(() {
        _movie = response.body;
        _loading = false;
      });
    } catch (e) {
      setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_movie?.title ?? 'Loading...')),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (_movie?.posterPath != null)
              Center(
                child: Image.network(
                  'https://image.tmdb.org/t/p/w300${_movie.posterPath}',
                  errorBuilder: (_, __, ___) =>
                  const Icon(Icons.movie, size: 100),
                ),
              ),
            const SizedBox(height: 16),
            Text(
              _movie?.title ?? '',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            if (_movie?.voteAverage != null)
              Text('⭐ ${_movie.voteAverage}/10'),
            const SizedBox(height: 16),
            Text(_movie?.overview ?? 'No description available.'),
          ],
        ),
      ),
    );
  }
}