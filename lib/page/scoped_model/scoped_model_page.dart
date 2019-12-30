import 'package:flutter/material.dart';
import 'package:flutter_architecture/page/scoped_model/youbike_scoped_model_page.dart';
import 'package:flutter_architecture/scoped_model/youbike_scoped_model.dart';
import 'package:scoped_model/scoped_model.dart';

class ScopedModelPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ScopedModelPageState();
  }
}

class ScopedModelPageState extends State<ScopedModelPage> {
  final YouBikeScopedModel _model = YouBikeScopedModel();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<YouBikeScopedModel>(
      model: _model,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Scoped Model'),
        ),
        body: YouBikeScopedModelPage(_model),
      ),
    );
  }
}
