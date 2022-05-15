part of 'giphy_bloc.dart';

@immutable
abstract class GiphyEvent {}

class GiphyLoadingEvent extends GiphyEvent {}

class GiphyFailureEvent extends GiphyEvent {
  final String? error;

  GiphyFailureEvent({
    this.error,
  });
}

class GiphyGetTrendingGifsEvent extends GiphyEvent {}

class GiphyTrendingGifsSuccessEvent extends GiphyEvent {
  final TrendingGifs trendingGifs;

  GiphyTrendingGifsSuccessEvent({
    required this.trendingGifs,
  });
}
