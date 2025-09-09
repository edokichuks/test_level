import 'package:flutter/material.dart';
import 'package:test_level/src/core/utils/app_colors.dart';
import 'package:test_level/src/core/utils/app_spacing.dart';


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
