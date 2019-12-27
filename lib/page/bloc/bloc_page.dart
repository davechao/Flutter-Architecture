import 'package:flutter/material.dart';
import 'package:flutter_architecture/bloc/youbike_bloc.dart';
import 'package:flutter_architecture/model/api/api_provider.dart';
import 'package:flutter_architecture/model/config_provider.dart';
import 'package:flutter_architecture/model/vo/config_data.dart';
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
    ConfigData _configData = ConfigProvider.of(context).data;
    ApiProvider apiProvider = ApiProvider(_configData.apiBaseUrl);

    return RepositoryProvider(
      create: (context) => apiProvider,
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
