import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = Dio();
  static init() {
    dio = Dio(BaseOptions(
        baseUrl: 'https://api.nytimes.com/svc/topstories/v2/',
        receiveDataWhenStatusError: true));
  }

  static Future<Response> getData(String url) async {
    return await dio.get(url);
  }
}
