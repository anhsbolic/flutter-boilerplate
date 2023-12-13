import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData?.size.width;
    screenHeight = _mediaQueryData?.size.height;
    orientation = _mediaQueryData?.orientation;
  }
}

double designHeight = 720.0; //layout height that designer use
double designWidth = 360.0; //layout height that designer use

//get the proportionate screen height
double getProportionateScreenHeight(double inputHeight) {
  double? screenHeight = SizeConfig.screenHeight;
  if (screenHeight != 0) {
    return (inputHeight / designHeight) * screenHeight!;
  } else {
    return 0;
  }
}

//get the proportionate screen height
double getProportionateScreenWidth(double inputWidth) {
  double? screenWidth = SizeConfig.screenWidth;
  if (screenWidth != 0) {
    return (inputWidth / designWidth) * screenWidth!;
  } else {
    return 0;
  }
}
