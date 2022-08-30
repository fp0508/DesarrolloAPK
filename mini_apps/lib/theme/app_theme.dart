import 'package:flutter/material.dart';

class appTheme {
  static const Color primarycolor = Colors.redAccent;
  static ThemeData lightTheme = ThemeData.light().copyWith(
      useMaterial3: true,
      splashFactory: InkSparkle.splashFactory,
      colorScheme: ColorScheme.light(onSurface: Colors.white),
      appBarTheme: AppBarTheme(
          backgroundColor: primarycolor, elevation: 0, centerTitle: true));
}
