import 'package:get/get.dart';
import 'package:kencleng_flutter_mobile/module/onboarding/onboarding_controller.dart';

class OnboardingBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<OnboardingController>(OnboardingController());
  }
}
