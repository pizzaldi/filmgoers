part of 'upcoming_cubit.dart';

@immutable
abstract class UpcomingState {}

class UpcomingInitial extends UpcomingState {}

class UpcomingLoadingState extends UpcomingState {}

class UpcomingSuccessState extends UpcomingState {
  final UpcomingModel result;

  UpcomingSuccessState(this.result);
}

class UpcomingErrorState extends UpcomingState {}
