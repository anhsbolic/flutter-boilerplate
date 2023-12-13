import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingInButton extends StatelessWidget {
  const LoadingInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SpinKitThreeInOut(
        color: Colors.white,
        size: 24,
      ),
    );
  }
}
