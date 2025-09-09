
import 'package:flutter/material.dart';
import 'package:test_level/src/core/utils/app_colors.dart';
import 'package:test_level/src/core/utils/app_images';

import 'package:test_level/src/core/utils/app_spacing.dart';
import 'package:test_level/src/core/utils/app_string.dart';
import 'package:test_level/src/general_widget/app_image_view.dart';


class CompleteProfileCard extends StatelessWidget {
  const CompleteProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Gaps.page),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0XFFE1DAFA).withValues(alpha: 0),
              Color(0XFFE1DAFA).withValues(alpha: 70),
            ],
          ),
          borderRadius: BorderRadius.circular(Gaps.cardRadius),
        ),
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text + progress
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Complete your profile', style: Txt.cardTitle),
                  SizedBox(height: 6),
                  Text(
                    'You’ll need to complete your profile to optimize your experience',
                    style: Txt.cardBody,
                  ),
                  SizedBox(height: 12),

                  Row(
                    children: [
                      SizedBox(
                        width: 77,
                        child: LinearProgressIndicator(
                          value: 0.4,

                          minHeight: 5,
                          backgroundColor: Colors.white,
                          borderRadius: BorderRadius.circular(1000),
                        ),
                      ),
                      SizedBox(width: 7),
                      Text(
                        '1/3',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF090A0B),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            AppImageView(width: 65, height: 75, imagePath: AppImages.personal),
          ],
        ),
      ),
    );
  }
}

class CardDots extends StatelessWidget {
  final int total;
  final int index; // active index (0-based)
  const CardDots({super.key, required this.total, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 4,
        children: List.generate(total, (i) {
          final active = i == index;
          return Container(
            width: 8,
            height: 8,
            // margin: const EdgeInsets.symmetric(horizontal: 3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: active ? AppColors.brand : AppColors.divider,
            ),
          );
        }),
      ),
    );
  }
}
