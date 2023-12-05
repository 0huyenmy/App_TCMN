import 'package:dio/dio.dart';
import 'package:journal_linker/api/base_api.dart';
import 'package:journal_linker/api/rest_client_factory.dart';
import 'package:journal_linker/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(RestClientFactory restClient)
      : _baseApi = restClient.obtainRestClient(),
        dio = restClient.obtainDio();
  final BaseApi _baseApi;
  final Dio dio;
  // @override
  // Future<DefaultModel<LoginModel>> sendPhone({String? phone}) {
  //   final Map<String, dynamic> data = {
  //     "phone": phone,
  //   };
  //   final response = _baseApi.sendPhone(data);
  //   return response;
  // }
}
