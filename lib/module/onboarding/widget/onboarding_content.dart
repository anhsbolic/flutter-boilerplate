import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kencleng_flutter_mobile/common/style/my_color.dart';
import 'package:kencleng_flutter_mobile/common/widget/kc_button.dart';

class OnboardingContent extends StatelessWidget {
  final String title;
  final String desc;
  final bool isLast;
  final VoidCallback onNext;

  const OnboardingContent({
    super.key,
    this.title = "",
    this.desc = "",
    this.isLast = false,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 340,
      decoration: const BoxDecoration(
        color: MyColor.rhinoDark,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 24,
        bottom: 32,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: MyColor.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            desc,
            style: const TextStyle(
              color: MyColor.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          KcButton(
            press: onNext,
            text: isLast ? 'start'.tr : 'next'.tr,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
