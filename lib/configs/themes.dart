import 'package:flutter/material.dart';
import 'package:futteranimations_app/configs/colors.dart';

var lightTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: lighbgcolor,
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w700,
      letterSpacing: 1.5,
    ),
    color: Colors.deepPurple,
    centerTitle: true,
  ),
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: lighbgcolor,
    onSurface: lightfontcolor,
    primaryContainer: lightprimary,
    primary: lightprimary,
  ),
);
