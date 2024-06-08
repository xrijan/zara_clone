import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    textTheme: const TextTheme(
      displayLarge:
          TextStyle(color: Colors.white, fontSize: 24), // White for headings
      bodyLarge: TextStyle(
          color: Colors.white70, fontSize: 16), // Light gray for body text
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.white),
    ),
  );
}
