import 'dart:developer';

import "package:flutter/material.dart";

class SignUpTheme {
//**************************GENERAL COLORS**************************//
//BUTTONS
  static const Color _buttonPurple = Color.fromARGB(255, 54, 56, 83);
  static const Color _buttonDisabled = Color.fromARGB(255, 207, 208, 223);
  static const Color _outlinedButtonBackground = Colors.white;
//TEXTS
  static const Color _elevatedButtonTextColor = Colors.white;
  static const Color _elevatedButtonTextColorDisabled = Colors.white;
  static const Color _outlinedButtonTextColor = Color.fromARGB(255, 54, 56, 83);
  static const Color _outlinedButtonTextColorDisabled =
      Color.fromARGB(255, 207, 208, 223);
//INPUTS
  static const Color _outlineedBorderInput = Color.fromARGB(255, 128, 143, 161);

//**************************GENERAL COLORS**************************//

//**************************APP BAR COLORS**************************//
  static const Color _appBarBackgroundColor = Color.fromRGBO(255, 191, 14, 1);
  static const Color _appBarIconColor = Color.fromRGBO(52, 60, 70, 1);
  static const Color _subtitle1Color = Color.fromARGB(255, 60, 70, 1);
  static const Color _subtitle2Color = Color.fromARGB(255, 60, 70, 1);
  static const Color _circularTrackColor = Color.fromARGB(255, 60, 70, 1);
  static const Color _circularTrackBackgroundColor = Colors.white;
//**************************APP BAR COLORS**************************//

  static final ThemeData gralTheme = ThemeData(
    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith(
                (states) => _outlinedButtonBackground),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0))),
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) =>
                  states.contains(MaterialState.disabled)
                      ? _outlinedButtonTextColorDisabled
                      : _outlinedButtonTextColor,
            ),
            side: MaterialStateProperty.resolveWith<BorderSide>(
                (Set<MaterialState> states) => BorderSide(
                    width: 1,
                    style: BorderStyle.solid,
                    color: (states.contains(MaterialState.disabled))
                        ? _buttonDisabled
                        : _buttonPurple)))),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0))),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) =>
                    states.contains(MaterialState.disabled)
                        ? _buttonDisabled
                        : _buttonPurple),
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) =>
                    (states.contains(MaterialState.disabled))
                        ? _elevatedButtonTextColorDisabled
                        : _elevatedButtonTextColor))),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        borderSide: BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: _outlinedButtonBackground),
      ),
    ),
  );

  static final ThemeData appBarTheme = ThemeData(
    backgroundColor: _appBarBackgroundColor,
    textTheme: const TextTheme(
      subtitle1: TextStyle(
          color: _subtitle1Color, fontWeight: FontWeight.bold, fontSize: 16),
      subtitle2: TextStyle(color: _subtitle2Color, fontSize: 12, height: 1.5),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: _appBarBackgroundColor,
      iconTheme: IconThemeData(color: _appBarIconColor),
    ),
  );

  static final ThemeData stepCounter = ThemeData(
    progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: _circularTrackBackgroundColor,
        circularTrackColor: _circularTrackColor),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
          color: Color.fromARGB(255, 60, 70, 1), fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(
          color: Color.fromARGB(255, 60, 70, 1), fontWeight: FontWeight.bold),
      bodySmall: TextStyle(
          color: Color.fromARGB(255, 60, 70, 1), fontWeight: FontWeight.bold),
    ),
  );
}
