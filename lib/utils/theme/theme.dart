import 'package:e_commerce_flutter/utils/theme/custom_themes/appbar_theme.dart';
import 'package:e_commerce_flutter/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_commerce_flutter/utils/theme/custom_themes/chexbox_theme.dart';
import 'package:e_commerce_flutter/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_commerce_flutter/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_commerce_flutter/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:e_commerce_flutter/utils/theme/custom_themes/text_field_theme.dart';
import 'package:e_commerce_flutter/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      textTheme: TTextTheme.lightTextTheme,
      chipTheme: TChipTheme.lightChipTheme,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      checkboxTheme: TCheckboxTheme.lightCheckboxThemeData,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme
  );


  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      textTheme: TTextTheme.darkTextTheme,
      chipTheme: TChipTheme.darkChipTheme,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      checkboxTheme: TCheckboxTheme.darkCheckboxThemeData,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme
  );
}
