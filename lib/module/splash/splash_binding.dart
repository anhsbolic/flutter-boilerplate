import 'package:get/get.dart';
import 'package:kencleng_flutter_mobile/module/splash/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());
  }
}
