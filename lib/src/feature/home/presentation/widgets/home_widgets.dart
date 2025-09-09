import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
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

class TotalBlock extends StatelessWidget {
  const TotalBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Gaps.page),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Total', style: Txt.label, textAlign: TextAlign.center),
          SizedBox(height: 8),
          Text('\$0.00', style: Txt.amount, textAlign: TextAlign.center),
          SizedBox(height: 6),
          Text.rich(
            TextSpan(
              text: '+\$0.00    ',
              children: [
                TextSpan(
                  text: ' • ',
                  style: Txt.subAmount.copyWith(color: Color(0XFF828F9B)),
                ),
                TextSpan(text: '0.00%', style: Txt.subAmount),
              ],
            ),

            style: Txt.subAmount,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class PrimaryActions extends StatelessWidget {
  const PrimaryActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Gaps.page),
      child: Row(
        children: const [
          Expanded(
            child: Opacity(
              opacity: 0.5,
              child: OutlinedAction(title: 'Add money'),
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Opacity(
              opacity: 0.5,
              child: FilledAction(title: 'Invest', enabled: true),
            ),
          ),
        ],
      ),
    );
  }
}

class OutlinedAction extends StatelessWidget {
  final String title;
  const OutlinedAction({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: AppColors.brand, width: 1.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Gaps.buttonRadius),
        ),
        padding: const EdgeInsets.symmetric(vertical: 14),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: AppColors.brand,
        ),
      ),
    );
  }
}

class FilledAction extends StatelessWidget {
  final String title;
  final bool enabled;
  const FilledAction({super.key, required this.title, this.enabled = true});

  @override
  Widget build(BuildContext context) {
    final bg = enabled ? AppColors.primary : AppColors.primarySoft;
    final fg = enabled
        ? Colors.white
        : AppColors.textSecondary.withValues(alpha: 0.6);

    return ElevatedButton(
      onPressed: enabled ? () {} : null,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: bg,
        disabledBackgroundColor: bg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Gaps.buttonRadius),
        ),
        padding: const EdgeInsets.symmetric(vertical: 14),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: fg),
      ),
    );
  }
}

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

//!for stack

class ProgressBarCompact extends StatelessWidget {
  final String title;
  final double value;
  final String trailing;
  const ProgressBarCompact({
    super.key,
    required this.title,
    required this.value,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Expanded(
        //   child: Stack(
        //     children: [
        //       Container(
        //         height: 6,
        //         decoration: BoxDecoration(
        //           color: Color(0XFFEBE5FF),
        //           borderRadius: BorderRadius.circular(12),
        //         ),
        //       ),
        //       LayoutBuilder(
        //         builder: (context, c) => Container(
        //           width: c.maxWidth * value.clamp(0, 1),
        //           height: 6,
        //           decoration: BoxDecoration(
        //             color: AppColors.brand,
        //             borderRadius: BorderRadius.circular(12),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        SizedBox(
          width: 120,
          child: LinearProgressIndicator(
            value: 0.4,

            minHeight: 5,
            backgroundColor: Color(0XFFEBE5FF),
            borderRadius: BorderRadius.circular(1000),
          ),
        ),

        //     SizedBox(width: 7),
        Text(
          '1/3',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
