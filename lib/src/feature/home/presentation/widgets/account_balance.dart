import 'package:flutter/material.dart';

import 'package:test_level/src/core/utils/app_spacing.dart';
import 'package:test_level/src/core/utils/app_string.dart';




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