import 'package:flutter/material.dart';

import 'app_colors.dart';

sealed class AppTheme {
  const AppTheme._();

  static ThemeData appTheme = ThemeData(
    fontFamily: 'Roboto',
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blueColor),
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.black),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: AppColors.blueColor),
    dividerTheme:
        const DividerThemeData(thickness: 0.9, color: AppColors.greyColor),
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: AppColors.blueColor,
        centerTitle: false,
        elevation: 0,
        scrolledUnderElevation: 0),
  );
}
