part of 'giphy_bloc.dart';

@immutable
abstract class GiphyState {}

class GiphyInitialState extends GiphyState {}

class GiphyLoadingState extends GiphyState {}

class GiphyFailureState extends GiphyState {
  final String? error;

  GiphyFailureState({
    this.error,
  });
}

class GiphyTrendingGifsSuccessState extends GiphyState {
  final TrendingGifs trendingGifs;

  GiphyTrendingGifsSuccessState({
    required this.trendingGifs,
  });
}
