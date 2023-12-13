import 'package:kencleng_flutter_mobile/common/utils/secure_storage_utils.dart';

mixin SplashRepo {
  Future<bool> isLogin() async {
    return await SecureStorageUtils.isLogin();
  }
}
