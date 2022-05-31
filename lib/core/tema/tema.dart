import 'package:flutter/material.dart';

ThemeData tema() => ThemeData(
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: Colors.orange.shade600,
        onPrimary: Colors.white,
        secondary: Colors.orange.shade400,
        onSecondary: Colors.white,
        error: Colors.red.shade400,
        onError: Colors.white,
        background: Colors.orange.shade100,
        onBackground: Colors.white,
        surface: Colors.orange.shade300,
        onSurface: Colors.white,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.orange.shade700,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.orange.shade400,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith(
              (states) => Colors.orange.shade800),
          textStyle: MaterialStateTextStyle.resolveWith(
              (states) => TextStyle(fontSize: 18.0)),
        ),
      ),
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        headline1: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
