import 'package:dio/dio.dart';

class ApiClient {
  Dio dio = Dio();
  String? token;
  
  void init(String? newToken) {
   
    token = newToken;
    if (token != null) {
      dio.interceptors.clear();
      dio.interceptors
          .add(InterceptorsWrapper(onRequest: (options, handler) async {
        options.headers['Authorization'] = 'Bearer $token';
        return handler.next(options); //continue
      }, onResponse: (response, handler) {
        return handler.next(response); // continue
      }, onError: (DioError e, handler) {
        return handler.next(e); //continue
      }));
    }
  }

  Future<Response> get(String url, {Map<String, dynamic>? queryParams}) async {
    queryParams ??= {'': ''};
    return await dio.get(
      url,
      queryParameters: queryParams,

    );
  }

  Future<Response> post(String url,
      {Map<String, dynamic>? queryParams,
      required Map<String, dynamic> body}) async {
    queryParams ??= {'': ''};
    return await dio.post(
      url,
      data: body,
      queryParameters: queryParams,

    );
  }

  Future<Response> put(String url,
      {Map<String, dynamic>? queryParams,
      required Map<String, dynamic> body}) async {
    queryParams ??= {'': ''};
    return await dio.put(
      url,
      data: body,
      queryParameters: queryParams,
     
    );
  }

  Future<Response> patch(String url,
      {Map<String, dynamic>? queryParams,
      required Map<String, dynamic> body}) async {
    queryParams ??= {'': ''};
    return await dio.patch(
      url,
      data: body,
      queryParameters: queryParams,
    
    );
  }
}
