import 'package:flutter/material.dart';

import 'AppColors.dart';
class AppTheme{
  static ThemeData theme() => ThemeData(
    primarySwatch: Colors.red,
    backgroundColor: AppColours.BACKGROUND,
    textTheme: TextTheme(
      button: TextStyle(
        color: AppColours.WHITE,
        fontWeight: FontWeight.bold
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black54,
      elevation: 0,
      titleTextStyle: TextStyle(
          fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 24, letterSpacing: 1.2, color: AppColours.WHITE),
    ),
  );
}