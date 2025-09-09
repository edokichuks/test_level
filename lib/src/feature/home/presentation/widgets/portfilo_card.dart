import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_level/src/core/utils/app_colors.dart';
import 'package:test_level/src/core/utils/app_images';
import 'package:test_level/src/core/utils/app_spacing.dart';
import 'package:test_level/src/core/utils/app_string.dart';
import 'package:test_level/src/general_widget/app_image_view.dart';


class PortfolioCard extends StatelessWidget {
  const PortfolioCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Gaps.page),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(Gaps.cardRadius),
          border: Border.all(color: Color(0XFFE9EAEB), width: 0.5),
        ),
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 14, 8, 6),
              child: Row(
                children: [
                  Text('Portfolio', style: Txt.sectionTitle),
                  Spacer(),
                  Icon(
                    CupertinoIcons.chevron_forward,
                    size: 18,
                    color: AppColors.textSecondary,
                  ),
                ],
              ),
            ),
            const Divider(height: 1, color: AppColors.divider),
            PortfolioRow(
              icon: AppImages.dollar,
              title: 'Cash',
              value: '\$0.00',
            ),
            PortfolioRow(
              icon: AppImages.bank,
              title: 'Investments',
              value: '\$0.00',
              last: true,
            ),
          ],
        ),
      ),
    );
  }
}

class PortfolioRow extends StatelessWidget {
  final String icon;
  final String title;
  final String value;
  final bool last;
  const PortfolioRow({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    this.last = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      decoration: BoxDecoration(
        // border: last
        //     ? null
        //     : const Border(bottom: BorderSide(color: AppColors.divider)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          AppImageView(
            svgPath: icon,
            height: 20,

            width: 20,
            color: AppColors.textPrimary,
          ),
          const SizedBox(width: 12),
          Text(title, style: Txt.rowTitle),
          const Spacer(),
          Text(value, style: Txt.rowValue),
        ],
      ),
    );
  }
}
