import 'package:bloc/bloc.dart';
import 'package:filmgoers/repo/upcoming_api/upcoming_api.dart';
import 'package:filmgoers/model/upcoming/upcoming_model.dart';
import 'package:meta/meta.dart';

part 'upcoming_state.dart';

class UpcomingCubit extends Cubit<UpcomingState> {
  UpcomingCubit() : super(UpcomingInitial());

  UpcomingApi _upcomingApi = UpcomingApi();

  Future<void> getUpcomingData() async {
    try {
      emit(UpcomingLoadingState());
      final UpcomingModel result = await _upcomingApi.getUpcoming();

      if (result != null) {
        emit(UpcomingSuccessState(result));
      } else {
        emit(UpcomingErrorState());
      }
    } catch (e) {
      emit(UpcomingErrorState());
    }
  }
}
