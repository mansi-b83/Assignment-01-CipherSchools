import 'package:flutter/material.dart';

class AppTheme{
  static final ThemeData lightTheme = ThemeData(
    // scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.green,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    cardTheme: CardTheme(
      color: Colors.white,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    textTheme: TextTheme(
       bodyMedium: TextStyle(
        color: Colors.black,
      ),
    ),
      colorScheme: const ColorScheme(brightness: Brightness.light, primary: Colors.white, onPrimary: Colors.white, secondary: Colors.white, onSecondary: Colors.white, primaryContainer: Colors.white, error: Colors.black, onError: Colors.white, background: Colors.white, onBackground: Colors.white, surface: Colors.white, onSurface: Colors.white)
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(100, 42, 42, 44),
    // appBarTheme: AppBarTheme(
    //   color: Colors.black,
    //   // actionsIconTheme: IconThemeData(
    //   //   color: Colors.black,
    //   // ),
    //
    // ),
    cardTheme: CardTheme(
      color: Color.fromARGB(100, 95, 95, 98),
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        color: Colors.black,
      ),
    ),

    colorScheme: const ColorScheme(brightness: Brightness.light, primary: Colors.white, onPrimary: Colors.white, secondary: Colors.white, onSecondary: Colors.white, primaryContainer: Color.fromARGB(100, 95, 95, 98), error: Colors.black, onError: Colors.white, background: Colors.white, onBackground: Colors.white, surface: Colors.white, onSurface: Colors.white)

  );

}