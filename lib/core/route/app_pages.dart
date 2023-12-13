import 'package:get/get.dart';
import 'package:kencleng_flutter_mobile/module/onboarding/onboarding_binding.dart';
import 'package:kencleng_flutter_mobile/module/onboarding/onboarding_screen.dart';
import 'package:kencleng_flutter_mobile/module/splash/splash_binding.dart';
import 'package:kencleng_flutter_mobile/module/splash/splash_screen.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    // SPLASH
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    // ONBOARDING
    GetPage(
      name: AppRoutes.onboarding,
      page: () => const OnboardingScreen(),
      binding: OnboardingBinding(),
    ),
  ];
}
