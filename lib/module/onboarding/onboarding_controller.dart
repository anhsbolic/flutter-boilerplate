import 'package:get/get.dart';
import 'package:kencleng_flutter_mobile/module/onboarding/onboarding_repo.dart';

class OnboardingController extends GetxController with OnboardingRepo {
  final items = <Map<String, String>>[
    {
      'title': 'onboarding_title_1'.tr,
      'desc': 'onboarding_desc_1'.tr,
      'image': 'assets/img/onboarding-1.png',
    },
    {
      'title': 'onboarding_title_2'.tr,
      'desc': 'onboarding_desc_2'.tr,
      'image': 'assets/img/onboarding-2.png',
    },
    {
      'title': 'onboarding_title_3'.tr,
      'desc': 'onboarding_desc_3'.tr,
      'image': 'assets/img/onboarding-3.png',
    },
  ];
  final RxInt page = 0.obs;

  void nextPage() {
    if (page.value == items.length - 1) {
      // Get.offNamed('/login');
    } else {
      page.value++;
    }
  }
}
