part of 'trending_cubit.dart';

abstract class TrendingState extends Equatable {
  const TrendingState();
}

class TrendingInitial extends TrendingState {
  @override
  List<Object> get props => [];
}

class TrendingLoadingState extends TrendingState {
  @override
  List<Object> get props => throw UnimplementedError();
}

class TrendingSuccessState extends TrendingState {
  final TrendingModel? result;

  TrendingSuccessState(this.result);

  @override
  List<Object> get props => throw UnimplementedError();
}

class TrendingErrorState extends TrendingState {
  @override
  List<Object> get props => throw UnimplementedError();
}
