
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_level/src/core/utils/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  const BottomNavBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    const items = [
      NavItem(icon: CupertinoIcons.house_alt, label: 'Home'),
      NavItem(icon: CupertinoIcons.chart_bar, label: 'Portfolio'),
      NavItem(icon: CupertinoIcons.compass, label: 'Explore'),
      NavItem(icon: CupertinoIcons.person, label: 'Profile'),
    ];

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: AppColors.divider)),
      ),
      padding: const EdgeInsets.only(top: 8, bottom: 12),
      child: Row(
        children: [
          for (var i = 0; i < items.length; i++) ...[
            Expanded(
              child: BottomNavTile(item: items[i], active: i == currentIndex),
            ),
          ],
        ],
      ),
    );
  }
}

class NavItem {
  final IconData icon;
  final String label;
  const NavItem({required this.icon, required this.label});
}

class BottomNavTile extends StatelessWidget {
  final NavItem item;
  final bool active;
  const BottomNavTile({super.key, required this.item, required this.active});

  @override
  Widget build(BuildContext context) {
    final color = active ? AppColors.primary : AppColors.navIcon;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // underline indicator (centered short line)
        SizedBox(
          height: 16,
          child: Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 180),
              width: active ? 36 : 0,
              height: 4,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        ),
        Icon(item.icon, size: 22, color: color),
        const SizedBox(height: 6),
        Text(
          item.label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
      ],
    );
  }
}
