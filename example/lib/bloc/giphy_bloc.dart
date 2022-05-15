import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../utils/constants.dart';
import '../utils/giphy_repository.dart';
import '../utils/trending_gifs.dart';

part 'giphy_event.dart';

part 'giphy_state.dart';

class GiphyBloc extends Bloc<GiphyEvent, GiphyState> {
  GiphyRepository giphyRepository;

  GiphyBloc({
    required this.giphyRepository,
  }) : super(
          GiphyInitialState(),
        ) {
    on<GiphyLoadingEvent>(
      (event, emit) => emit(
        GiphyLoadingState(),
      ),
    );

    on<GiphyFailureEvent>(
      (event, emit) => emit(
        GiphyFailureState(
          error: event.error,
        ),
      ),
    );

    on<GiphyGetTrendingGifsEvent>(
      (event, emit) => _getTrendingGifs(),
    );

    on<GiphyTrendingGifsSuccessEvent>(
      (event, emit) => emit(
        GiphyTrendingGifsSuccessState(
          trendingGifs: event.trendingGifs,
        ),
      ),
    );
  }

  void _getTrendingGifs() async {
    try {
      add(
        GiphyLoadingEvent(),
      );

      final response = await giphyRepository.getTrendingGifs();

      if (response.data?.isNotEmpty ?? false) {
        add(
          GiphyTrendingGifsSuccessEvent(
            trendingGifs: response,
          ),
        );
      } else {
        add(
          GiphyFailureEvent(
            error: kNoData,
          ),
        );
      }
    } on Exception catch (e) {
      add(
        GiphyFailureEvent(
          error: e.toString(),
        ),
      );
    }
  }
}
