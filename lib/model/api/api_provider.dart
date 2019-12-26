import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter_architecture/model/api/vo/bike_list_item.dart';

class ApiProvider {
  String _baseUrl;
  Dio _dio;

  ApiProvider(String baseUrl) {
    _baseUrl = baseUrl;
    _dio = _baseDio();
  }

  Dio _baseDio() {
    Dio dio = Dio(new BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 100000,
      contentType: ContentType.json.toString(),
      responseType: ResponseType.json,
    ));
    return dio;
  }

  Future<BikeListItem> fetchBikes() async {
    final response = await _dio.get("youbike");
    Fimber.d("response.statusCode: ${response.statusCode}");
    Fimber.d("response.data: ${response.data}");
    return BikeListItem.fromJson(response.data);
  }
}
