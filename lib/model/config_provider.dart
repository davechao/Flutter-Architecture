import 'package:flutter/material.dart';
import 'package:flutter_architecture/model/vo/config_data.dart';

class ConfigProvider extends InheritedWidget {
  final ConfigData data;

  ConfigProvider({
    @required this.data,
    @required Widget child,
  }) : super(child: child);

  static ConfigProvider of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(ConfigProvider);
  }

  @override
  bool updateShouldNotify(ConfigProvider oldWidget) => data != oldWidget.data;
}
