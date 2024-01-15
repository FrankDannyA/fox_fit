import 'package:flutter/material.dart';
import 'package:fox_fit/core/ui_kit/ui_kits.dart';
import 'package:fox_fit/features/bottom_nav_bar/bottom_nav_bar.dart';

class FoxFitApp extends StatelessWidget {
  const FoxFitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      home: const BottomNavBar(),
    );
  }
}
