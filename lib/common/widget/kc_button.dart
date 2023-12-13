import 'package:flutter/material.dart';
import 'package:kencleng_flutter_mobile/common/style/my_color.dart';

class KcButton extends StatelessWidget {
  final String? text;
  final VoidCallback press;
  final bool isDisabled;
  final double fontSize;
  final Color fontColor;
  final FontWeight fontWeight;
  final double? width;
  final double? height;
  final double radius;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final Color background;
  final Widget? child;

  const KcButton(
      {Key? key,
      this.text,
      required this.press,
      this.isDisabled = false,
      this.fontSize = 16,
      this.fontColor = MyColor.btnText,
      this.fontWeight = FontWeight.w700,
      this.width = double.infinity,
      this.height = 50.0,
      this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      this.radius = 30.0,
      this.background = MyColor.primary,
      this.elevation,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: background,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          elevation: elevation,
        ),
        onPressed: isDisabled ? null : press,
        child: (child == null)
            ? Text(
                text ?? "",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: isDisabled ? MyColor.btnDisabledText : fontColor,
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                    ),
              )
            : child,
      ),
    );
  }
}
