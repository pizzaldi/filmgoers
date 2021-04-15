part of 'trending_bloc.dart';

abstract class TrendingEvent extends Equatable {
  const TrendingEvent();
}

class TrendingGetDataEvent extends TrendingEvent {
  TrendingGetDataEvent({this.mediaType, this.timeWindow});

  // all, movie, tv, person
  final String mediaType;

  // day, week
  final String timeWindow;

  @override
  List<Object> get props => throw UnimplementedError();
}
