import 'package:kencleng_flutter_mobile/core/dto/login/user_data.dart';

class LoginData {
  String? token;
  UserData? user;

  LoginData({
    this.token,
    this.user,
  });

  LoginData.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    user = json['user'] != null ? UserData.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    data['user'] = user?.toJson();
    return data;
  }
}
