import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:filmgoers/api/trending_api/trending_api.dart';
import 'package:filmgoers/model/trending/trending_model.dart';

part 'trending_state.dart';

class TrendingCubit extends Cubit<TrendingState> {
  TrendingCubit() : super(TrendingInitial());

  TrendingApi _trendingApi = TrendingApi();

  Future<void> getTrendingData(String mediaType, String timeWindow) async {
    emit(TrendingLoadingState());
    try {
      print('trending cubit 0');
      TrendingModel result = await _trendingApi.getTrending(
          mediaType: mediaType, timeWindow: timeWindow);
      print('trending cubit 1');
      if (result != null) {
        print('trending cubit 2');
        print(result.toString());
        emit(TrendingSuccessState(result));
      } else {
        print('trending cubit 3');
        emit(TrendingErrorState());
      }
    } catch (e) {
      print('trending cubit exception error: $e');
      emit(TrendingErrorState());
    }
  }
}
