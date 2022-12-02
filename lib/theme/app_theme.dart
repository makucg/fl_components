import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.pink;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primary,
      //useMaterial3: true,
      appBarTheme: const AppBarTheme(color: primary),
      listTileTheme: const ListTileThemeData(iconColor: primary),
      textButtonTheme: TextButtonThemeData(style: textButtonStyle),
      floatingActionButtonTheme: floatingActionButtonThemeData,
      elevatedButtonTheme: elevatedButtonThemeData,
      inputDecorationTheme: inputDecorationTheme);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      useMaterial3: true,
      appBarTheme: const AppBarTheme(color: primary),
      listTileTheme: const ListTileThemeData(iconColor: primary),
      textButtonTheme: TextButtonThemeData(style: textButtonStyle),
      floatingActionButtonTheme: floatingActionButtonThemeData,
      elevatedButtonTheme: elevatedButtonThemeData,
      inputDecorationTheme: inputDecorationTheme);

  static ButtonStyle textButtonStyle = TextButton.styleFrom(
    foregroundColor: primary,
  );

  static FloatingActionButtonThemeData floatingActionButtonThemeData =
      const FloatingActionButtonThemeData(
          backgroundColor: primary, foregroundColor: Colors.black);

  static ElevatedButtonThemeData elevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.pink,
      foregroundColor: Colors.white,
      shape: const StadiumBorder(),
    ),
  );

  static InputDecorationTheme inputDecorationTheme = const InputDecorationTheme(
    floatingLabelStyle: TextStyle(color: primary),
    labelStyle: TextStyle(color: primary),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      borderSide: BorderSide(color: Colors.pink),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      borderSide: BorderSide(color: Colors.pink),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      borderSide: BorderSide(color: Colors.red),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      borderSide: BorderSide(color: Colors.red),
    ),
  );
}
