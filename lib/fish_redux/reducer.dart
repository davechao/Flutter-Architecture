import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_architecture/fish_redux/action.dart';
import 'package:flutter_architecture/fish_redux/state.dart';

Reducer<YouBikeState> buildReducer() {
  return asReducer<YouBikeState>(<Object, Reducer<YouBikeState>>{
    YouBikeAction.fetchBike: _fetchBike,
  });
}

YouBikeState _fetchBike(YouBikeState state, Action action) {
  final YouBikeState newState = state.clone();
  newState.bikeListItem = action.payload;
  return newState;
}
