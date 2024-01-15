import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fox_fit/core/ui_kit/ui_kits.dart';
import 'package:fox_fit/features/calendar_screen/calendar_screen.dart';
import 'package:fox_fit/features/clients_screen/client_screen.dart';
import 'package:fox_fit/features/funnel_screen/funnel_screen.dart';
import 'package:fox_fit/features/more_screen/more_screen.dart';
import 'package:fox_fit/features/stat_screen/stat_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final screens = [
    StatScreen(),
    const ClientScreen(),
    const CalendarScreen(),
    const FunnelScreen(),
    const MoreScreen(),
  ];

  void setIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Color setColor(int index) =>
      _currentIndex == index ? AppColors.orange : AppColors.secondGray;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: setIndex,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            label: 'Статистика',
            icon: SvgPicture.asset(
              'assets/icons/static_icon.svg',
              colorFilter: ColorFilter.mode(
                setColor(0),
                BlendMode.srcIn,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Клиенты",
            icon: SvgPicture.asset(
              'assets/icons/user-square.svg',
              colorFilter: ColorFilter.mode(
                setColor(1),
                BlendMode.srcIn,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Расписание",
            icon: SvgPicture.asset(
              'assets/icons/calendar-2.svg',
              colorFilter: ColorFilter.mode(
                setColor(2),
                BlendMode.srcIn,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Воронка",
            icon: SvgPicture.asset(
              'assets/icons/filter-tick.svg',
              colorFilter: ColorFilter.mode(
                setColor(3),
                BlendMode.srcIn,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Еще",
            icon: SvgPicture.asset(
              'assets/icons/element-3.svg',
              colorFilter: ColorFilter.mode(
                setColor(4),
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
