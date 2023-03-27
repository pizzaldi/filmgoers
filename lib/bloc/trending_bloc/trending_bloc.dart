import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:filmgoers/repo/trending_api/trending_api.dart';
import 'package:filmgoers/model/trending/trending_model.dart';

part 'trending_event.dart';
part 'trending_state.dart';

class TrendingBloc extends Bloc<TrendingEvent, TrendingState> {
  TrendingBloc() : super(TrendingInitial()) {
    on<TrendingGetDataEvent>(_getTrending);
  }

  TrendingApi _trendingApi = TrendingApi();

  // @override
  // Stream<TrendingState> mapEventToState(
  //   TrendingEvent event,
  // ) async* {
  //   yield* _getTrending(event);
  // }

  Future<void> _getTrending(
      TrendingGetDataEvent event, Emitter<TrendingState> emit) async {
    emit(TrendingLoadingState());
    try {
      TrendingModel result = await _trendingApi.getTrending(
          mediaType: event.mediaType, timeWindow: event.timeWindow);

      if (result != null) {
        print(result.toString());
        emit(TrendingSuccessState(result));
      } else {
        emit(TrendingErrorState());
      }
    } catch (e) {
      emit(TrendingErrorState());
    }
  }
}
