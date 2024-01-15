import 'package:flutter/material.dart';
import 'package:fox_fit/core/ui_kit/ui_kits.dart';

class AppTheme {
  static final ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldWhite,

    //
    dividerTheme: const DividerThemeData(
      thickness: 0,
      color: AppColors.dividerGray,
    ),

    //
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.bottomNavBarGrey,
      showUnselectedLabels: true,
      selectedItemColor: AppColors.orange,
      unselectedItemColor: AppColors.secondGray,
      selectedLabelStyle: AppTextStyles.navBarStyle,
      unselectedLabelStyle: AppTextStyles.navBarStyle.copyWith(
        color: AppColors.secondGray,
      ),
    ),

    //
    appBarTheme: const AppBarTheme(
      titleTextStyle: AppTextStyles.h3Bold,
      backgroundColor: AppColors.appBarGrey,
      toolbarHeight: 71,
      centerTitle: false,
    ),

    //
    tabBarTheme: TabBarTheme(
      dividerHeight: 0,
      indicatorSize: TabBarIndicatorSize.tab,
      indicator: const BoxDecoration(
        color: AppColors.scaffoldWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      unselectedLabelStyle: AppTextStyles.tabLableStyle,
      labelStyle: AppTextStyles.tabLableStyle.copyWith(
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
