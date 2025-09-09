import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_level/src/core/utils/app_colors.dart';
import 'package:test_level/src/core/utils/app_images';

import 'package:test_level/src/core/utils/app_spacing.dart';
import 'package:test_level/src/core/utils/app_string.dart';
import 'package:test_level/src/general_widget/app_image_view.dart';


class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Gaps.page, vertical: 6),
      child: Column(
        children: [
          AppImageView(height: 12, width: 12, svgPath: AppImages.arrowDown),
          Row(
            children: [
              Text.rich(
                TextSpan(
                  text: 'Hi Ayo ',
                  style: Txt.hi,
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Padding(
                        padding: EdgeInsets.only(left: 2),
                        child: Text(
                          '👋🏾',
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            height: 1.22,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              AppImageView(height: 20, width: 20, svgPath: AppImages.bell),
            ],
          ),
        ],
      ),
    );
  }
}