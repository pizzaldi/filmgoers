part of 'tv_cubit.dart';

abstract class TvState extends Equatable {
  const TvState();
}

class TvInitial extends TvState {
  @override
  List<Object> get props => [];
}

class TvDetailsLoadingState extends TvState {
  @override
  List<Object> get props => throw UnimplementedError();
}

class TvDetailsSuccessState extends TvState {
  final TvDetailsModel result;

  TvDetailsSuccessState(this.result);

  @override
  List<Object> get props => throw UnimplementedError();
}

class TvDetailsErrorState extends TvState {
  @override
  List<Object> get props => throw UnimplementedError();

}