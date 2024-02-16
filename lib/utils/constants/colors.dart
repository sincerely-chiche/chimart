import 'package:flutter/material.dart';

class CColors {
  CColors._();

  static const Color primary = Color(0xFF4b68ff);
  static const Color secondary = Color(0xFFffe34b);
  static const Color accent = Color(0xFFb0c7ff);

  //gradient colors
  static const Gradient linerGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    colors: [Color(0xFFff9a9e), Color(0xFFfad0c4), Color(0xFFfad0c4)],
  );

  //text colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6c757d);
  static const Color textWhite = Color(0xFFffffff);

  //background colors
  static const Color bgLight = Color(0xFFf6f6f6);
  static const Color bgDark = Color(0xFF272727);
  static const Color bgPrimary = Color(0xFFf3f5ff);

  //background colors
  static const Color lightContainer = Color(0xFFf6f6f6);
  static Color darkContainer = CColors.white.withOpacity(.1);

  //button colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6c757d);
  static const Color buttonDisabled = Color(0xFFc4c4c4);

  //border colors
  static const Color borderPrimary = Color(0xFFd9d9d9);
  static const Color borderSecondary = Color(0xFFe6e6e6);

  //Error and Validation Colors
  static const Color error = Color(0xFFd32f2f);
  static const Color success = Color(0xFF388e3c);
  static const Color warning = Color(0xFFf57c00);
  static const Color info = Color(0xFF1976d2);

  //Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4f4f4f);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFe0e0e0);
  static const Color softGrey = Color(0xFFf4f4f4);
  static const Color lightGrey = Color(0xFFf9f9f9);
  static const Color white = Color(0xFFffffff);
}
