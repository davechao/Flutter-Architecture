import 'package:equatable/equatable.dart';

abstract class YouBikeEvent extends Equatable {
  const YouBikeEvent();
}

class FetchYouBike extends YouBikeEvent {
  @override
  List<Object> get props => [];
}
