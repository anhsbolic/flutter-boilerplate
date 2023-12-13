import 'dart:convert';

import 'package:flutter/material.dart';

class ImageDefault extends StatelessWidget {
  final String? base64;
  final double? width;
  final double? height;
  final BoxFit? boxFit;

  const ImageDefault({
    Key? key,
    this.base64,
    this.width = 150,
    this.height = 150,
    this.boxFit = BoxFit.contain,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (base64 == null || base64 == "") {
      return Image.asset(
        'assets/img/img-placeholder.png',
        width: width,
        height: height,
        fit: boxFit,
      );
    }

    return Image.memory(
      const Base64Decoder().convert(base64!),
      width: width,
      height: height,
      fit: boxFit,
    );
  }
}
