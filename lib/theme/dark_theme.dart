import 'package:flutter/material.dart';

const Color backgroundColorDarkMode = Color(0xFF000000);
const Color outlineColorDarkMode = Color(0xFFB2B2B2);
const Color primaryColor = Color(0xFFFFA500);
const Color secondaryColor = Color(0xFF000000);
const Color tertiaryColor = Color(0xFFFFFFFF);
const Color onPrimaryColor = Color(0xFF000000);
const Color onSecondaryColor = Color(0xFFDADADA);
const Color onTertiaryColor = Color(0xFFFFFFFF);
const Color onSurfaceColor = Color(0xFF7A7A7A);
const Color onErrorColor = Color(0xFFFFFFFF);
const Color errorColor = Color(0xFFB00020);
const Color surfaceColor = Color(0xFF000000);
const Color cardBackgroundColor = Color(0xFF191919);
const Color cardBorderColor = Color(0xFF8E8E8E);
const Color cardFocusBorderColor = Color(0xFF4D4D4D);
const Color iconColor = Color(0xFFEDEDED);
const Color shadowColor = Color.fromARGB(15, 0, 0, 0);
const Color hintTextColorDarkMode = Color(0xFFB2B2B2);

ThemeData darkMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: backgroundColorDarkMode,
  dividerColor: outlineColorDarkMode,
  textTheme: const TextTheme(
    labelLarge: TextStyle(color: onSecondaryColor),
    labelMedium: TextStyle(color: onSecondaryColor),
    labelSmall: TextStyle(color: onSecondaryColor),
    titleLarge: TextStyle(color: onSecondaryColor),
    titleMedium: TextStyle(color: onSecondaryColor),
    titleSmall: TextStyle(color: onSecondaryColor),
    bodyLarge: TextStyle(color: onSecondaryColor),
    bodyMedium: TextStyle(color: onSecondaryColor),
    bodySmall: TextStyle(color: onSecondaryColor),
    headlineLarge: TextStyle(color: onSecondaryColor),
    headlineMedium: TextStyle(color: onSecondaryColor),
    headlineSmall: TextStyle(color: onSecondaryColor),
    displayLarge: TextStyle(color: onSecondaryColor),
    displayMedium: TextStyle(color: onSecondaryColor),
    displaySmall: TextStyle(color: onSecondaryColor),
  ),
  fontFamily: 'GeneralSans',
  colorScheme: const ColorScheme.light(
    primary: primaryColor, //primary color for button,text etc
    onPrimary: onPrimaryColor, // text color on primary
    secondary: secondaryColor, //drawer active and table color
    onSecondary: onSecondaryColor, //color of drawer active text
    onSecondaryContainer: onSecondaryColor, //table text color
    tertiary: tertiaryColor,
    error: errorColor,
    surface: surfaceColor,
    onSurface: onSurfaceColor, //color of drawer inactive text
    outline: outlineColorDarkMode, //border color
    shadow: shadowColor, //shadow color
  ),
  appBarTheme: const AppBarTheme(
    color: backgroundColorDarkMode,
    centerTitle: true,
    iconTheme: IconThemeData(color: iconColor),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      overlayColor: secondaryColor,
      backgroundColor: primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
    ),
  ),
  iconTheme: const IconThemeData(color: iconColor),
  inputDecorationTheme: InputDecorationTheme(
    isDense: true,
    suffixIconColor: iconColor,
    prefixIconColor: iconColor,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
    fillColor: cardBackgroundColor,
    filled: true,
    hintStyle: TextStyle(color: hintTextColorDarkMode),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: cardBorderColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: cardBorderColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: cardFocusBorderColor),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.red[700]!),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: cardBorderColor),
    ),
  ),
);
