import 'package:kencleng_flutter_mobile/core/dto/login/login_data.dart';

class LoginResponse {
  bool? success;
  String? message;
  LoginData? data;

  LoginResponse({
    this.success,
    this.message,
    this.data,
  });

  LoginResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? LoginData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> theData = <String, dynamic>{};
    theData['success'] = success;
    theData['message'] = message;
    theData['data'] = data?.toJson();
    return theData;
  }
}
