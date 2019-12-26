import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_architecture/model/api/vo/bike_list_item.dart';

enum YouBikeAction { fetchBike, onFetchBike }

class YouBikeActionCreator {
  // Effect
  static Action onFetchBike() {
    return const Action(YouBikeAction.onFetchBike);
  }

  // Reducer
  static Action fetchBike(BikeListItem bikeListItem) {
    return Action(YouBikeAction.fetchBike, payload: bikeListItem);
  }
}
