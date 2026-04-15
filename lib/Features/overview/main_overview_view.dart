import 'package:fleexa/Features/overview/home/presentation/views/home_view.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/views/system_overview_view.dart';
import 'package:fleexa/Features/settings/presentation/views/settings_view.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_bottom_nav_bar.dart';

class MainOverviewView extends StatefulWidget {
  const MainOverviewView({super.key});

  @override
  State<MainOverviewView> createState() => _MainOverviewViewState();
}

class _MainOverviewViewState extends State<MainOverviewView> {
  final PageController _pageController = PageController();

  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeView(),
    SystemOverviewView(),
    SettingsView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        physics: const BouncingScrollPhysics(),
        children: _screens,
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
