import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_level/src/core/utils/app_colors.dart';
import 'package:test_level/src/core/utils/app_images';
import 'package:test_level/src/feature/bottom_nav/domain/models/app_bottom_nav_model.dart';
import 'package:test_level/src/feature/bottom_nav/domain/notifier/app_bottom_nav_notifier.dart';
import 'package:test_level/src/feature/home/presentation/home_screen.dart';
import 'package:test_level/src/general_widget/todo_screen.dart';

class AppBottomNavScreen extends ConsumerStatefulWidget {
  const AppBottomNavScreen({super.key});
  @override
  ConsumerState createState() => _AppBottomNavScreenState();
}

class _AppBottomNavScreenState extends ConsumerState<AppBottomNavScreen> {
  final List<Widget> _pages = [
    HomeScreen(),
    TodoScreen(),
    TodoScreen(),
    TodoScreen(),
  ];

  void _onItemTapped(int index) {
    ref.read(appBottomNavProdivder.notifier).moveToTab(index: index);
  }

  final tabs = [
    BottomTabItemModel(
      inActiveIcon: AppImages.home,
      icon: AppImages.home,
      label: 'Home',
    ),
    BottomTabItemModel(
      inActiveIcon: AppImages.porttfolio,
      icon: AppImages.porttfolio,
      label: 'Portfolio',
    ),
    BottomTabItemModel(
      inActiveIcon: AppImages.explore,
      icon: AppImages.explore,
      label: 'Explore',
    ),
    BottomTabItemModel(
      inActiveIcon: AppImages.profile,
      icon: AppImages.profile,
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final tabIndex = ref.watch(appBottomNavProdivder).currentTabIndex;
    return Scaffold(
      body: _pages[tabIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: GoogleFonts.openSans(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          height: 1.22,
          color: AppColors.brand,
        ),

        selectedItemColor:  AppColors.brand,
        items: List.generate(tabs.length, (index) {
          final tabItem = tabs[index];
          final bool isSelected = tabIndex == index;
          return BottomNavigationBarItem(
            label: tabItem.label,
            icon: SvgPicture.asset(
              isSelected ? tabItem.icon : tabItem.inActiveIcon,
              width: 24,
              
              colorFilter: ColorFilter.mode(
                isSelected ? AppColors.brand : AppColors.textSecondary,
                BlendMode.srcIn,
              ),
              height: 24,
              fit: BoxFit.cover,
            ),
          );
        }),
        currentIndex: tabIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
