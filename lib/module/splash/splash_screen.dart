import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:kencleng_flutter_mobile/common/utils/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: ColorfulSafeArea(
        color: Colors.transparent,
        overflowRules: const OverflowRules.all(true),
        overflowTappable: true,
        child: Center(
          child: SizedBox(
            width: 200,
            child: Image.asset(
              'assets/img/app-logo.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
