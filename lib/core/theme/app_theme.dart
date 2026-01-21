import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryOrange,
    scaffoldBackgroundColor: AppColors.white,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColors.primaryOrange,
      secondary: AppColors.blue,
    ),
    fontFamily: 'Poppins',
    useMaterial3: true,
  );
}
