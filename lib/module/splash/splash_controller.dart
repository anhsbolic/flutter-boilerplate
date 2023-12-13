import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:kencleng_flutter_mobile/core/route/app_pages.dart';
import 'package:kencleng_flutter_mobile/module/splash/splash_repo.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin, SplashRepo {
  Animation? animation;
  AnimationController? _animationController;

  @override
  void onInit() {
    super.onInit();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );

    animation = Tween(begin: 1.0, end: 0.0).animate(_animationController!)
      ..addListener(() => update());
    _animationController?.forward().then((_) {
      getInitData();
    });
  }

  void getInitData() async {
    var resLogin = await isLogin();
    if (resLogin) {
      // Get.offAllNamed(AppRoutes.main);
    } else {
      Get.offAllNamed(AppRoutes.onboarding);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _animationController?.dispose();
  }
}
