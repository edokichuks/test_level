// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_level/src/feature/bottom_nav/domain/notifier/app_bottom_nav_state.dart';

// Project imports:

class AppBottomNavNotifier extends StateNotifier<AppBottomNavState> {
  AppBottomNavNotifier() : super(AppBottomNavState.initialState());

  moveToTab({required int index}) {
    state = state.copyWith(currentTabIndex: index);
  }
}

final appBottomNavProdivder =
    StateNotifierProvider<AppBottomNavNotifier, AppBottomNavState>(
        (ref) => AppBottomNavNotifier());
