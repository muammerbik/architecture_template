import 'package:architecture_template/core/constants/colors.dart';
import 'package:architecture_template/core/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Custom light theme for project design
final class CustomLightTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      useMaterial3: true,
      fontFamily: GoogleFonts.roboto().fontFamily,
      floatingActionButtonTheme: floatingActionButtonThemeData,
      cardTheme: cardThemeData,
      appBarTheme: appBarTheme);

  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData =>
      const FloatingActionButtonThemeData();

  @override
  CardThemeData get cardThemeData => const CardThemeData(
        elevation: 0,
        color: CustomColors.grey300,
      );

  @override
  AppBarTheme get appBarTheme => const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: CustomColors.white,
      );
}
