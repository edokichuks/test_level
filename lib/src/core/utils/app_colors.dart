import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF7C5CFF); // Brand purple
  static const brand = Color(0xFF3C00FF); // Brand purple
  static const primarySoft = Color(0xFFEDE8FF);
  static const primarySoft2 = Color(0xFFDCD3FF);

  static const background = Colors.white;
  static const card = Color(0XFFF8F8F9);
  static const textPrimary = Color(0xFF121212);
  static const textSecondary = Color(0xFF60707A);
  static const divider = Color(0xFFF0F0F0);
  static const success = Color(0xFF10B981);
  static const warning = Color(0xFFF59E0B);

  static const shadow = Color(0x1A000000); // 10% black
  static const navIcon = Color(0xFF6B7280);

  static const gradientLilacStart = Color(0xFFF2EFFF);
  static const gradientLilacEnd = Color(0xFFEFE9FF);

  static const gradientPromoStart = Color(0xFF1D0765);
  static const gradientPromoEnd = Color(0xFF3C00FF);

  static ColorScheme get scheme => const ColorScheme.light(
    primary: brand,
    onPrimary: Colors.white,
    surface: background,
    onSurface: textPrimary,
  );
}
