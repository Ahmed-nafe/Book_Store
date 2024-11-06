import 'package:dio/dio.dart';

class ApiManger {
  final baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio _dio;

  ApiManger(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get("$baseUrl$endPoint");
    return response.data;
  }
}
