import 'package:flutter/material.dart';

import '../utils/colors.dart';

abstract class AppThemes {
  static ThemeData light = ThemeData(
    focusColor: Colors.white,
    secondaryHeaderColor: Color(0xffeeeeee),
    hintColor: Color(0xfff7f6fa),
    highlightColor: Color(0xffeaffe5),
    disabledColor: Color(0xfffeebed),
    canvasColor: Colors.black,
    cardColor: Colors.white,
    drawerTheme: DrawerThemeData(backgroundColor: Colors.white),
    scaffoldBackgroundColor: ColorsProject.mainGrayColor,
    fontFamily: 'Roboto',
    textTheme: TextTheme(
      headlineLarge: const TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: Color(0xff15294b),
          height: 1.3),
      headlineMedium: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: Colors.black,
          height: 1.3),
      headlineSmall: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: Color(0xff15294b),
          height: 1.3),
      titleLarge: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black,
          height: 1.3),
      titleMedium: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black,
          height: 1.3),
      titleSmall: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Colors.black,
          height: 1.3),
      bodyLarge: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w900,
          color: Colors.black,
          height: 1.3),
      bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          color: Colors.black.withValues(alpha: 0.9),
          height: 1.3),
      bodySmall: TextStyle(
          wordSpacing: -2,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black.withValues(alpha: 0.8),
          height: 1.3),
      labelLarge: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: Colors.black.withValues(alpha: 0.5),
          height: 1.3),
      labelMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.black.withValues(alpha: 0.9),
          height: 1.3),
    ),
  );
  static ThemeData dark = ThemeData(
    focusColor: Colors.black,
    secondaryHeaderColor: Color(0xff1a1a2a),
    hintColor: Color(0xff252435),
    highlightColor: Color(0xff122920),
    disabledColor: Color(0xff2a1524),
    canvasColor: Colors.white.withValues(alpha: 0.6),
    cardColor: Color(0xff121222),
    drawerTheme: DrawerThemeData(backgroundColor: Color(0xff121222)),
    scaffoldBackgroundColor: ColorsProject.backgroundDarkModeColor,
    fontFamily: 'Roboto',
    textTheme: TextTheme(
      headlineLarge: const TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          height: 1.3),
      headlineMedium: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: Colors.white,
          height: 1.3),
      headlineSmall: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          height: 1.3),
      titleLarge: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          height: 1.3),
      titleMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.white.withValues(alpha: 0.6),
          height: 1.3),
      titleSmall: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Colors.black,
          height: 1.3),
      bodyLarge: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w900,
          color: Colors.white,
          height: 1.3),
      bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          color: Colors.white.withValues(alpha: 0.6),
          height: 1.3),
      bodySmall: TextStyle(
          wordSpacing: -2,
          fontSize: 16,
          fontWeight: FontWeight.w300,
          color: Colors.white.withValues(alpha: 0.6),
          height: 1.3),
      labelLarge: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w300,
          color: Colors.white.withValues(alpha: 0.6),
          height: 1.3),
      labelMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.white.withValues(alpha: 0.5),
          height: 1.3),
    ),
  );
}
