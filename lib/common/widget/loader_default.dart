import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kencleng_flutter_mobile/common/style/my_color.dart';

class LoaderDefault extends StatelessWidget {
  final double width;
  final double height;
  final String message;

  const LoaderDefault({
    Key? key,
    this.width = 340,
    this.height = 160,
    this.message = "Please Wait . . .",
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SpinKitDoubleBounce(
                    color: MyColor.primary,
                    size: 32,
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Text(
                message,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
