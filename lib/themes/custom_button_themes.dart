import 'package:flutter/material.dart';
import 'package:gametracker/helpers/custom_colors.dart';

class CustomButtonThemes {
  static ElevatedButtonThemeData get primaryButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        onSurface: CustomColors.primaryColor,
        primary: CustomColors.primaryColor,
        onPrimary: CustomColors.backgroundColor,
        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }

  static ElevatedButtonThemeData get secondaryButtonTheme {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return CustomColors.disabledColor;
          }
          return CustomColors.secondaryColor;
        }),
        foregroundColor: MaterialStateProperty.resolveWith(
            (_) => CustomColors.backgroundColor),
        shape: MaterialStateProperty.resolveWith(
          (_) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        textStyle: MaterialStateProperty.resolveWith(
            (_) => TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
      ),
    );
  }

  static ElevatedButtonThemeData get borderButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        onSurface: CustomColors.backgroundColor,
        primary: CustomColors.backgroundColor,
        onPrimary: CustomColors.primaryColor,
        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: CustomColors.primaryColor, width: 3),
        ),
      ),
    );
  }

  static ElevatedButtonThemeData get facebookButton {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: CustomColors.facebookColor,
        onSurface: CustomColors.facebookColor,
        onPrimary: Colors.white,
        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }

  static ElevatedButtonThemeData get googleButton {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: CustomColors.googleColor,
        onSurface: CustomColors.googleColor,
        onPrimary: Colors.white,
        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }

  static TextButtonThemeData get customTextButton {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: CustomColors.textColor,
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }
}
