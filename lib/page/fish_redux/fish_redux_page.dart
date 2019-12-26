import 'package:flutter/material.dart';
import 'package:flutter_architecture/page/fish_redux/youbike_fish_redux_page.dart';

class FishReduxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FishReduxPageState();
  }
}

class FishReduxPageState extends State<FishReduxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fish Redux'),
      ),
      body: YouBikeFishReduxPage().buildPage(null),
    );
  }
}
