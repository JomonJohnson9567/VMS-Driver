import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../colors/colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryOrange,
    scaffoldBackgroundColor: AppColors.white,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColors.primaryOrange,
      secondary: AppColors.blue,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(),
    useMaterial3: true,
  );
}
