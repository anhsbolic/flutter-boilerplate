import 'package:flutter/material.dart';

import 'my_color.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: MyColor.primary,
  scaffoldBackgroundColor: MyColor.bgDark,
  appBarTheme: const AppBarTheme(
    backgroundColor: MyColor.bgDark,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  fontFamily: 'Montserrat',
);
