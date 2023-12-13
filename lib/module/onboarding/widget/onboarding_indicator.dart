import 'package:flutter/material.dart';
import 'package:kencleng_flutter_mobile/common/style/my_color.dart';

class OnboardingIndicator extends StatelessWidget {
  final int index;
  const OnboardingIndicator({
    super.key,
    this.index = 0,
  });

  Alignment getAlignment(int index) {
    switch (index) {
      case 0:
        return Alignment.centerLeft;
      case 1:
        return Alignment.center;
      case 2:
        return Alignment.centerRight;
      default:
        return Alignment.centerLeft;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 48,
      height: 6,
      decoration: BoxDecoration(
        color: MyColor.rhinoDark,
        borderRadius: BorderRadius.circular(3),
      ),
      alignment: getAlignment(index),
      child: Container(
        width: (MediaQuery.of(context).size.width - 48) / 3,
        height: 6,
        decoration: BoxDecoration(
          color: MyColor.primary,
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    );
  }
}
