import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter_architecture/bloc/youbike_event.dart';
import 'package:flutter_architecture/bloc/youbike_state.dart';
import 'package:flutter_architecture/model/api/api_provider.dart';
import 'package:flutter_architecture/model/api/vo/bike_list_item.dart';

class YouBikeBloc extends Bloc<YouBikeEvent, YouBikeState> {
  final ApiProvider apiProvider;

  YouBikeBloc(this.apiProvider);

  @override
  YouBikeState get initialState => Loading();

  @override
  Stream<YouBikeState> mapEventToState(YouBikeEvent event) async* {
    if (event is FetchYouBike) {
      yield Loading();
      try {
        final BikeListItem bikeListItem = await apiProvider.fetchBikes();
        yield Success(bikeListItem: bikeListItem);
      } on DioError catch (e) {
        Fimber.e("Dio Error: $e");
        yield Error();
      }
    }
  }
}
