import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:kencleng_flutter_mobile/common/base/base_network.dart';
import 'package:kencleng_flutter_mobile/core/dto/login/login_response.dart';
import 'package:kencleng_flutter_mobile/core/environment/constant.dart';

class LoginNetwork extends BaseNetwork {
  Future<LoginResponse> login(String email, String password) async {
    try {
      var dioClient = await getClient();
      var body = {
        "email": email,
        "password": password,
      };
      var response = await dioClient.post(
        "auth/login",
        data: body,
        options: Options(
          contentType: Headers.jsonContentType,
          headers: {"X-TOKEN-CS-API": xTokenCsApi},
        ),
      );
      return LoginResponse.fromJson(jsonDecode(response.toString()));
    } on DioException catch (ex) {
      // Assuming there will be an errorMessage property in the JSON object
      String errorMessage = jsonDecode(ex.response.toString())["message"];
      throw Exception(errorMessage);
    }
  }
}
