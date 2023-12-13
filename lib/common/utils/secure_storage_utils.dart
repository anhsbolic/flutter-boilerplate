import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageUtils {
  // LANGUAGE
  static const String language = "language";
  static Future<String?> getLanguage() async {
    const storage = FlutterSecureStorage();
    var temp = await storage.read(key: language);

    return temp;
  }

  // LOGIN USER
  static const String keyToken = "token";
  static const String keyUserId = "user_id";

  static Future<bool> isLogin() async {
    const storage = FlutterSecureStorage();
    var token = await storage.read(key: keyToken);
    var userId = await storage.read(key: keyUserId);
    if (token != null && userId != null) {
      return true;
    }
    return false;
  }

  static void setUser({required String token, required String userId}) async {
    const storage = FlutterSecureStorage();
    await storage.write(key: keyToken, value: token);
    await storage.write(key: keyUserId, value: userId);
  }

  static Future<String> getToken() async {
    const storage = FlutterSecureStorage();
    var token = await storage.read(key: keyToken);
    if (token != null) {
      return token;
    }
    return "";
  }

  static Future<String> getUserId() async {
    const storage = FlutterSecureStorage();
    var userId = await storage.read(key: keyUserId);
    if (userId != null) {
      return userId;
    }
    return "";
  }

  static Future<void> logout() async {
    const storage = FlutterSecureStorage();
    await storage.delete(key: keyToken);
    await storage.delete(key: keyUserId);
  }
}
