import 'dart:io';
import 'package:dio/dio.dart';

import '../storages/storage.dart';
import 'app_dependencies.dart';
import 'dio_connectivity_request_retrier.dart';

class RetryOnConnectionChangeInterceptor extends Interceptor {
  final DioConnectivityRequestRetrier requestRetrier;
  final Function dioErrorSubject;
  final hiveStorage = getIt.get<HiveStorage>();

  RetryOnConnectionChangeInterceptor({
    required this.requestRetrier,
    required this.dioErrorSubject,
  });

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    String accessToken = hiveStorage.token;
    options.headers['Accept-Language'] = 'vi';
    options.headers["Authorization"] = "Bearer $accessToken";
    options.headers["Connection"] = "Keep-Alive";
    options.headers["Access-Control-Allow-Origin"] = "*";
    options.headers["Access-Control-Allow-Methods"] =
        "GET,PUT,PATCH,POST,DELETE";
    options.headers["Access-Control-Allow-Headers"] =
        "Origin, X-Requested-With, Content-Type, Accept";
    options.receiveDataWhenStatusError = true;

    if (options.data is FormData) {
      // final FormData data = options.data;
      // print('-------  FormData Params: ${data.fields}');
    } else {
      // print('-------  Params: ${options.data}');
    }
    super.onRequest(options, handler);
  }

  @override
  Future onError(DioError dioError, ErrorInterceptorHandler handler) async {
    dioErrorSubject.call(dioError);
    // print('------- onError Params: ${dioError.response?.statusCode}');
    if (_shouldRetry(dioError)) {
      try {
        final response =
            await requestRetrier.scheduleRequestRetry(dioError.requestOptions);
        handler.resolve(response);
      } on DioError catch (e) {
        handler.reject(e);
        dioErrorSubject.call(dioError);
      }
    } else {
      _error401(dioError, handler);
      dioErrorSubject.call(dioError);
      super.onError(dioError, handler);
    }
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  bool _shouldRetry(DioError err) {
    return err.error is SocketException;
  }

  _error401(DioError dioError, ErrorInterceptorHandler handler) async {
    if (dioError.response != null &&
        dioError.response!.statusCode == StatusCode.unauthenticated) {
      await Future.delayed(const Duration(milliseconds: 1100));
    }
  }
}

class StatusCode {
  static final int unauthenticated = 401;
}
