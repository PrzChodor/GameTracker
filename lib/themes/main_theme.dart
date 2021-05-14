import 'package:flutter/material.dart';
import 'package:gametracker/helpers/custom_colors.dart';
import 'package:gametracker/themes/custom_button_themes.dart';

class MainTheme {
  static ThemeData get mainTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: CustomColors.backgroundColor,
      canvasColor: CustomColors.backgroundColor,
      textTheme: TextTheme(
        headline3: TextStyle(
            color: CustomColors.textColor, fontWeight: FontWeight.bold),
        headline4: TextStyle(
            color: CustomColors.textColor, fontWeight: FontWeight.bold),
        headline5: TextStyle(
            color: CustomColors.textColor, fontWeight: FontWeight.w500),
        bodyText2: TextStyle(
            color: CustomColors.secondaryColor, fontWeight: FontWeight.w500),
      ),
      textSelectionTheme:
          TextSelectionThemeData(selectionHandleColor: CustomColors.textColor),
      elevatedButtonTheme: CustomButtonThemes.primaryButtonTheme,
      textButtonTheme: CustomButtonThemes.customTextButton,
    );
  }
}
