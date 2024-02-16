import 'package:chimart/utils/theme/custom_themes/appbar_theme.dart';
import 'package:chimart/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:chimart/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:chimart/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:chimart/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:chimart/utils/theme/custom_themes/text_field_theme.dart';
import 'package:chimart/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class CAPPTheme {
  CAPPTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: CTextTheme.lightTextTheme,
      elevatedButtonTheme: CElevatedButtonTheme.lightElevatedButtonTheme,
      inputDecorationTheme: CTextFormFieldTheme.lightInputDecorationTheme,
      outlinedButtonTheme: COutlinedButtonTheme.lightOutlinedButtonTheme,
      bottomSheetTheme: CBottomSheetTheme.lightBottomSheetTheme,
      checkboxTheme: CCheckboxTheme.lightCheckboxTheme,
      appBarTheme: CAppBarTheme.lightAppBarTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: CTextTheme.darkTextTheme,
      elevatedButtonTheme: CElevatedButtonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: CTextFormFieldTheme.darkInputDecorationTheme,
      outlinedButtonTheme: COutlinedButtonTheme.darkOutlinedButtonTheme,
      bottomSheetTheme: CBottomSheetTheme.darkBottomSheetTheme,
      checkboxTheme: CCheckboxTheme.darkCheckboxTheme,
      appBarTheme: CAppBarTheme.darkAppBarTheme);
}
