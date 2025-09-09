import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_level/src/core/utils/app_colors.dart';

class Txt {
  static final hi = GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 1.22,
    color: AppColors.textPrimary,
  );

  static final label = GoogleFonts.openSans(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
    height: 1.2,
  );

  static final amount = GoogleFonts.openSans(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.05,
    // letterSpacing: -0.2,
    color: AppColors.textPrimary,
  );

  static final subAmount = GoogleFonts.openSans(
    fontSize: 12,
    color: Color(0XFF383D41),
    fontWeight: FontWeight.w500,
    height: 1.2,
  );

  static final cardTitle = GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 1.25,
    color: AppColors.textPrimary,
  );

  static final cardBody = GoogleFonts.openSans(
    fontSize: 12,
    color: Color(0XFF383D41),
    height: 1.35,
  );

  static final sectionTitle = GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.25,
    color: AppColors.textPrimary,
  );

  static final rowTitle = GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.25,
    color: AppColors.textPrimary,
  );

  static final rowValue = GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 1.25,
    color: AppColors.textPrimary,
  );

  static final promoTitle = GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    height: 1.2,
  );

  static final promoBody = GoogleFonts.openSans(
    fontSize: 13,
     fontWeight: FontWeight.w500,
    color: Colors.white,
    height: 1.35,
  );

  static final mini = GoogleFonts.openSans(
    fontSize: 12,
    color: AppColors.textSecondary,
    height: 1.15,
  );
}
