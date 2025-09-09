import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:test_level/src/core/utils/app_colors.dart';
import 'package:test_level/src/core/utils/app_images';
import 'package:test_level/src/core/utils/app_spacing.dart';
import 'package:test_level/src/core/utils/app_string.dart';
import 'package:test_level/src/general_widget/app_image_view.dart';


class InviteBanner extends StatelessWidget {
  const InviteBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Gaps.page),
      child: Container(
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
          border: GradientBoxBorder(
            gradient: LinearGradient(
              colors: [
                Colors.white.withValues(alpha: 1),
                Colors.white.withValues(alpha: 0.2),
              ],
            ),
            width: 0.86,
          ),
          gradient: const LinearGradient(
            colors: [AppColors.gradientPromoStart, AppColors.gradientPromoEnd],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(Gaps.cardRadius),
        ),
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Invite Friends, Get \$5', style: Txt.promoTitle),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.close, color: Color(0XFFE8EBED)),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      'Earn free rewards when your friend successfully joins. It’s simple.',
                      style: Txt.promoBody,
                    ),
                  ),
                  AppImageView(
                    height: 56,
                    width: 56,
                    imagePath: AppImages.invest,
                  ),
                ],
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
