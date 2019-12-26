import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_architecture/model/api/vo/bike_list_item.dart';

class YouBikeState implements Cloneable<YouBikeState> {
  BikeListItem bikeListItem;

  @override
  YouBikeState clone() {
    return YouBikeState()..bikeListItem = bikeListItem;
  }
}

YouBikeState initState(Map<String, dynamic> args) {
  return YouBikeState();
}
