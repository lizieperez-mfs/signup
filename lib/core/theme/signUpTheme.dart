import "package:flutter/material.dart";

class SignUpTheme {
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
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0))),
              backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) => states.contains(MaterialState.disabled) ? _buttonDisabled : _buttonPurple),
              foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) => (states.contains(MaterialState.disabled)) ? _elevatedButtonTextColorDisabled : _elevatedButtonTextColor))),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          borderSide: BorderSide(
              width: 1,
              style: BorderStyle.solid,
              color: _outlinedButtonBackground),
        ),
      ));
}
