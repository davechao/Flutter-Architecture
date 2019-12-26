import 'package:flutter/material.dart';
import 'package:flutter_architecture/page/bloc/bloc_page.dart';
import 'package:flutter_architecture/page/fish_redux/fish_redux_page.dart';
import 'package:flutter_architecture/page/scoped_model/scoped_model_page.dart';

class Architecture extends StatelessWidget {
  Widget _buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        FlatButton(
          child: Text('Scoped Model'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScopedModelPage()),
            );
          },
        ),
        FlatButton(
          child: Text('Bloc'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BlocPage()),
            );
          },
        ),
        FlatButton(
          child: Text('Fish Redux'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FishReduxPage()),
            );
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Architecture'),
      ),
      body: _buildBody(context),
    );
  }
}
