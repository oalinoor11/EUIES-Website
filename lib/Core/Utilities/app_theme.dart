import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AppColors.dart';
class AppTheme{
  static ThemeData theme() => ThemeData(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    primarySwatch: Colors.red,
    backgroundColor: AppColours.BACKGROUND,
    splashFactory: NoSplash.splashFactory,
    textTheme: GoogleFonts.abelTextTheme(
      const TextTheme(
        button: TextStyle(
            color: AppColours.WHITE,
            fontWeight: FontWeight.bold
        ),
        bodyText1: TextStyle(
            color: AppColours.WHITE,
            fontWeight: FontWeight.bold
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black54,
      elevation: 0,
      titleTextStyle: TextStyle(
          fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 24, letterSpacing: 1.2, color: AppColours.WHITE),
    ),
  );
}