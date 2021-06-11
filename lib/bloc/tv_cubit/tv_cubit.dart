import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:filmgoers/api/tv_api/tv_details_api.dart';
import 'package:filmgoers/model/tv/tv_details_model.dart';

part 'tv_state.dart';

class TvCubit extends Cubit<TvState> {
  TvCubit() : super(TvInitial());

  TvDetailsApi _tvDetailsApi = TvDetailsApi();

  Future<void> getTvDetails(int tvId) async {
    try {
      emit(TvDetailsLoadingState());
      final TvDetailsModel result = await _tvDetailsApi.getTvDetails(tvId);

      if (result != null) {
        print('tv details success');
        emit(TvDetailsSuccessState(result));
      } else {
        print('tv details error 1');
        emit(TvDetailsErrorState());
      }
    } catch (e) {
      print('tv details error 2: ${e.toString()}');
      emit(TvDetailsErrorState());
    }
  }
}
