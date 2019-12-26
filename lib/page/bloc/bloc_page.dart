import 'package:flutter/material.dart';
import 'package:flutter_architecture/bloc/youbike_bloc.dart';
import 'package:flutter_architecture/model/api/api_provider.dart';
import 'package:flutter_architecture/page/bloc/youbike_bloc_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BlocPageState();
  }
}

class BlocPageState extends State<BlocPage> {
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ApiProvider('http://demo3779801.mockable.io/'),
      child: BlocProvider(
        create: (context) => YouBikeBloc(
          RepositoryProvider.of<ApiProvider>(context),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Bloc'),
          ),
          body: YouBikeBlocPage(),
        ),
      ),
    );
  }
}
