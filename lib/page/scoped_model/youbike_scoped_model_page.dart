import 'package:flutter/material.dart';
import 'package:flutter_architecture/model/api/vo/bike_item.dart';
import 'package:flutter_architecture/model/api/vo/bike_list_item.dart';
import 'package:flutter_architecture/scoped_model/YouBikeScopedModel.dart';
import 'package:scoped_model/scoped_model.dart';

class YouBikeScopedModelPage extends StatefulWidget {
  final YouBikeScopedModel model;

  YouBikeScopedModelPage(this.model);

  @override
  State<StatefulWidget> createState() {
    return YouBikeScopedModelPageState();
  }
}

class YouBikeScopedModelPageState extends State<YouBikeScopedModelPage> {
  @override
  void initState() {
    super.initState();
    widget.model.fetchBikes();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<YouBikeScopedModel>(
      builder: (BuildContext context, Widget child, YouBikeScopedModel model) {
        if (model.isLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          BikeListItem bikeListItem = model.bikeListItem;
          List<BikeItem> bikeItems = bikeListItem.bikeItems;
          return ListView.builder(
            itemCount: bikeItems.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(bikeItems[index].sna),
              );
            },
          );
        }
      },
    );
  }
}
