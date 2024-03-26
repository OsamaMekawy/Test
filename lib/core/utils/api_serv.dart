import 'dart:convert';

import 'package:dio/dio.dart';

int pageNumber = 0;

class ApiService {

  final _baseUrl = 'https://jsonplaceholder.typicode.com/posts';
  final Dio _dio;

  ApiService(this._dio);


  Future<dynamic> get() async {


    var response = await _dio.get(
      '$_baseUrl',
    );


    if (response.statusCode == 200) {
      print(json.encode(response.data));
    }
    else {
      print(response.statusMessage);
    }


    return response.data;
  }
}

