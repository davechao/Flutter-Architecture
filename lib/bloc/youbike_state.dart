import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/model/api/vo/bike_list_item.dart';

class YouBikeState extends Equatable {
  const YouBikeState();

  @override
  List<Object> get props => [];
}

class Loading extends YouBikeState {}

class DataEmpty extends YouBikeState {}

class Error extends YouBikeState {}

class Success extends YouBikeState {
  final BikeListItem bikeListItem;

  Success({this.bikeListItem}) : assert(bikeListItem != null);

  @override
  List<Object> get props => [bikeListItem];
}
