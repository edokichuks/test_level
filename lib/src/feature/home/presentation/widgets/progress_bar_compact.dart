import 'package:flutter/material.dart';



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
