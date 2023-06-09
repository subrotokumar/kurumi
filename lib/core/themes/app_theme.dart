import 'package:flutter/material.dart';

class AppTheme {
  ThemeData darkTheme = ThemeData.dark(
    useMaterial3: true,
  );
  ThemeData lightTheme = ThemeData(
    useMaterial3: true,
  );

  ThemeMode get themeMode => ThemeMode.light;

  static Color background = const Color(0xff111015);
  static Color secondaryColor = const Color(0xff15161b);
}
