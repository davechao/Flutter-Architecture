import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture/app.dart';
import 'package:flutter_architecture/model/config_provider.dart';
import 'package:flutter_architecture/model/vo/config_data.dart';
import 'package:flutter_stetho/flutter_stetho.dart';

void main() {
  Stetho.initialize();
  Fimber.plantTree(DebugTree());
  var configProvider = ConfigProvider(
    data: ConfigData(
      apiBaseUrl: 'http://demo3779801.mockable.io/',
    ),
    child: App(),
  );
  runApp(configProvider);
}
