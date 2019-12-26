import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture/fish_redux/action.dart';
import 'package:flutter_architecture/fish_redux/state.dart';
import 'package:flutter_architecture/model/api/vo/bike_item.dart';

Widget buildView(
  YouBikeState state,
  Dispatch dispatch,
  ViewService viewService,
) {
  dispatch(YouBikeActionCreator.onFetchBike());

  if (state.bikeListItem != null) {
    List<BikeItem> bikeItems = state.bikeListItem.bikeItems;
    return ListView.builder(
      itemCount: bikeItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(bikeItems[index].sna),
        );
      },
    );
  } else {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
