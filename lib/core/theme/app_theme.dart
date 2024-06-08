import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,

    // Define the default TextTheme. Use this to specify the default
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontFamily: 'SourceSans3',
      ), // White for headings
      bodyLarge: TextStyle(
          color: Colors.white, fontSize: 16, fontFamily: 'SourceSans3'),
      bodySmall: TextStyle(
          color: Colors.white, fontSize: 12, fontFamily: 'SourceSans3'),
    ),

    // Define the default AppBarTheme. Use this to specify the default
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.white),
    ),

    // Define the default InputDecorationTheme. Use this to specify the default
    inputDecorationTheme: const InputDecorationTheme(
      // errorBorder: UnderlineInputBorder(
      //   borderSide: BorderSide(color: Colors.red, width: 1),
      // ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 0.1),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 0.1),
      ),
      // disabledBorder: UnderlineInputBorder(
      //   borderSide: BorderSide( color: Colors.white ,width: 1),
      // ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 0.1),
      ),
      labelStyle: TextStyle(
        color: Colors.white, // Color of the label text
        fontFamily: 'SourceSans3',
      ),
      hintStyle: TextStyle(
        color: Colors.white54, // Color of the hint text
        fontFamily: 'SourceSans3',
      ),
    ),
  );
}
