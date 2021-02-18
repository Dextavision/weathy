import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final _primaryColor = Colors.blue.shade900;
  static final _accentColor = Colors.amber.shade600;

  static ThemeData light() {
    final textTheme = _getTextTheme(brightness: Brightness.light);

    return ThemeData(
      primaryColor: _primaryColor,
      accentColor: _accentColor,
      textTheme: textTheme,
      primaryTextTheme: textTheme,
    );
  }

  static ThemeData dark() {
    final textTheme = _getTextTheme(brightness: Brightness.dark);

    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: _primaryColor,
      accentColor: _accentColor,
      textTheme: textTheme,
      primaryTextTheme: textTheme,
    );
  }

  static _getTextTheme({@required Brightness brightness}) {
    final themeData = ThemeData(brightness: brightness);

    return GoogleFonts.exo2TextTheme(themeData.textTheme).copyWith(
      headline1: GoogleFonts.merriweatherSans(),
      headline2: GoogleFonts.merriweatherSans(),
      headline3: GoogleFonts.merriweatherSans(),
      headline4: GoogleFonts.merriweatherSans(),
      headline5: GoogleFonts.merriweatherSans(),
      headline6: GoogleFonts.merriweatherSans(),
    );
  }
}
