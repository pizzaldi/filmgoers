// import 'dart:async';
//
// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:filmgoers/api/trending_api/trending_api.dart';
// import 'package:filmgoers/model/trending/trending_model.dart';
//
// part 'trending_event.dart';
// part 'trending_state.dart';
//
// class TrendingBloc extends Bloc<TrendingEvent, TrendingState> {
//   TrendingBloc() : super(TrendingInitial());
//
//   TrendingApi _trendingApi = TrendingApi();
//
//   @override
//   Stream<TrendingState> mapEventToState(
//     TrendingEvent event,
//   ) async* {
//     yield* _getTrending(event);
//   }
//
//   Stream<TrendingState> _getTrending(TrendingGetDataEvent event) async* {
//     yield TrendingLoadingState();
//     try {
//       TrendingModel result = await _trendingApi.getTrending(
//           mediaType: event.mediaType, timeWindow: event.timeWindow);
//
//       if (result != null) {
//         print(result.toString());
//         yield TrendingSuccessState(result);
//       } else {
//         yield TrendingErrorState();
//       }
//     } catch (e) {
//       yield TrendingErrorState();
//     }
//   }
// }
