import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_architecture/fish_redux/action.dart';
import 'package:flutter_architecture/fish_redux/state.dart';
import 'package:flutter_architecture/model/api/api_provider.dart';

Effect<YouBikeState> buildEffect() {
  return combineEffects(<Object, Effect<YouBikeState>>{
    YouBikeAction.onFetchBike: _onFetchBike,
  });
}

void _onFetchBike(Action action, Context<YouBikeState> ctx) {
  ApiProvider _apiProvider = ApiProvider('http://demo3779801.mockable.io/');
  _apiProvider.fetchBikes().then((value) {
    ctx.dispatch(YouBikeActionCreator.fetchBike(value));
  });
}
