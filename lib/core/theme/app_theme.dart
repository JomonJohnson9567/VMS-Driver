import 'package:flutter/material.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryPurple,
    scaffoldBackgroundColor: AppColors.white,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColors.primaryPurple,
      secondary: AppColors.blue,
    ),
    fontFamily: 'Poppins',
    useMaterial3: true,
  );
}
