import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kencleng_flutter_mobile/module/onboarding/onboarding_controller.dart';
import 'package:kencleng_flutter_mobile/module/onboarding/widget/onboarding_content.dart';
import 'package:kencleng_flutter_mobile/module/onboarding/widget/onboarding_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      init: OnboardingController(),
      builder: (OnboardingController controller) {
        return Scaffold(
          body: ColorfulSafeArea(
            color: Colors.transparent,
            overflowRules: const OverflowRules.only(bottom: true),
            overflowTappable: true,
            child: Obx(() {
              return Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    OnboardingIndicator(index: controller.page.value),
                    Image.asset(
                      controller.items[controller.page.value]['image']!,
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),
                    OnboardingContent(
                      title: controller.items[controller.page.value]['title']!,
                      desc: controller.items[controller.page.value]['desc']!,
                      isLast:
                          controller.page.value == controller.items.length - 1,
                      onNext: controller.nextPage,
                    ),
                  ],
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
