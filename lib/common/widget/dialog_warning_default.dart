import 'package:flutter/material.dart';
import 'package:kencleng_flutter_mobile/common/style/my_color.dart';
import 'package:kencleng_flutter_mobile/common/widget/kc_button.dart';

class DialogWarningDefault extends StatelessWidget {
  final double width;
  final double height;
  final String message;
  final Function onOkTap;

  const DialogWarningDefault({
    Key? key,
    this.width = 340,
    this.height = 200,
    this.message = "ERROR",
    required this.onOkTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black.withOpacity(0.5),
      child: AlertDialog(
        content: SizedBox(
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.warning,
                size: 52,
                color: MyColor.danger,
              ),
              const SizedBox(height: 16),
              Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 16),
              KcButton(
                press: () {
                  onOkTap();
                },
                text: "OK",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
