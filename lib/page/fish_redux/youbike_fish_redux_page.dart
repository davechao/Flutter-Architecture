import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_architecture/fish_redux/effect.dart';
import 'package:flutter_architecture/fish_redux/reducer.dart';
import 'package:flutter_architecture/fish_redux/state.dart';
import 'package:flutter_architecture/fish_redux/view.dart';

class YouBikeFishReduxPage extends Page<YouBikeState, Map<String, dynamic>> {
  YouBikeFishReduxPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
        );
}
