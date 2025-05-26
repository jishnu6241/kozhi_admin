import 'package:flutter/material.dart';

const Color backgroundColorLightMode = Color(0xFFFFFFFF); // Opposite of black
const Color outlineColorLightMode = Color(0xFF4D4D4D); // Opposite of B2B2B2
const Color primaryColor = Color(0xFFFFA500); // Unchanged
const Color secondaryColor = Color(0xFFFFFFFF); // Opposite of 000000
const Color tertiaryColor = Color(0xFF000000); // Opposite of FFFFFF
const Color onPrimaryColor = Color(0xFF000000); // Unchanged
const Color onSecondaryColor = Color(0xFF252525); // Opposite of DADADA
const Color onTertiaryColor = Color(0xFF000000); // Opposite of FFFFFF
const Color onSurfaceColor = Color(0xFF858585); // Near inverse of 7A7A7A
const Color onErrorColor = Color(0xFF000000); // Opposite of FFFFFF
const Color errorColor = Color(0xFF4FFFFF); // Inverted B00020 ≈ cyan-pink
const Color surfaceColor = Color(0xFFFFFFFF); // Opposite of 000000
const Color cardBackgroundColor = Color(0xFFE6E6E6); // Inverted 191919
const Color cardBorderColor = Color(0xFF717171); // Inverted 8E8E8E
const Color cardFocusBorderColor = Color(0xFFB2B2B2); // Inverted 4D4D4D
const Color iconColor = Color(0xFF121212); // Inverted EDEDED
const Color shadowColor = Color.fromARGB(15, 255, 255, 255); // Opposite (soft white shadow)
const Color hintTextColorLightMode = Color(0xFF4D4D4D); // Opposite of B2B2B2

ThemeData lightMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: backgroundColorLightMode,
  dividerColor: outlineColorLightMode,
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
    outline: outlineColorLightMode, //border color
    shadow: shadowColor, //shadow color
  ),
  appBarTheme: const AppBarTheme(
    color: backgroundColorLightMode,
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
    hintStyle: TextStyle(color: hintTextColorLightMode),
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
