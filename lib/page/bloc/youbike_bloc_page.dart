import 'package:flutter/material.dart';
import 'package:flutter_architecture/bloc/youbike_bloc.dart';
import 'package:flutter_architecture/bloc/youbike_event.dart';
import 'package:flutter_architecture/bloc/youbike_state.dart';
import 'package:flutter_architecture/model/api/vo/bike_item.dart';
import 'package:flutter_architecture/model/api/vo/bike_list_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class YouBikeBlocPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return YouBikeBlocPageState();
  }
}

class YouBikeBlocPageState extends State<YouBikeBlocPage> {
  YouBikeBloc _youBikeBloc;

  @override
  void initState() {
    super.initState();
    _youBikeBloc = BlocProvider.of<YouBikeBloc>(context);
    _youBikeBloc.add(FetchYouBike());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YouBikeBloc, YouBikeState>(
      builder: (context, state) {
        if (state is Success) {
          BikeListItem bikeListItem = state.bikeListItem;
          List<BikeItem> bikeItems = bikeListItem.bikeItems;
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
      },
    );
  }
}
