import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_level/src/core/utils/app_colors.dart';
import 'package:test_level/src/feature/home/presentation/home_screen.dart';

void main() => runApp(const FinanceApp());

class FinanceApp extends StatelessWidget {
  const FinanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = AppColors.scheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dev Test',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: scheme,
        scaffoldBackgroundColor: AppColors.background,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColors.brand,
        ),
        textTheme: GoogleFonts.openSansTextTheme(),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.background,
          foregroundColor: AppColors.textPrimary,
          elevation: 0,
          scrolledUnderElevation: 0,
          titleTextStyle: GoogleFonts.openSans(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
