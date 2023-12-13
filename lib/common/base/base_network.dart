import 'package:dio/dio.dart';
import 'package:kencleng_flutter_mobile/core/environment/constant.dart';
import 'package:kencleng_flutter_mobile/core/network/api_client.dart';

class BaseNetwork {
  final Dio client = Dio();

  Future<Dio> getClient() async {
    client.interceptors.add(ApiInterceptors());
    client.options.baseUrl = "$baseApiUrl/api/v1";
    client.options.connectTimeout = const Duration(seconds: 3);
    client.options.receiveTimeout = const Duration(seconds: 3);
    return client;
  }

  void cancel() {
    client.close();
  }
}
