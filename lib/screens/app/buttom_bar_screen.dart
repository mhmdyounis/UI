import 'package:flutter/material.dart';
import 'package:ui_app/models/bn_screen.dart';
import 'package:ui_app/screens/app/categories_screen.dart';
import 'package:ui_app/screens/app/home_screen.dart';
import 'package:ui_app/screens/app/settings_screen.dart';
import 'package:ui_app/screens/app/user_screen.dart';

class ButtomBarScreen extends StatefulWidget {
  const ButtomBarScreen({Key? key}) : super(key: key);

  @override
  State<ButtomBarScreen> createState() => _ButtomBarScreenState();
}

class _ButtomBarScreenState extends State<ButtomBarScreen> {
  int _current = 0;
  final List<BnScreen> _screens = <BnScreen>[
    const BnScreen(widget: HomeScreen(), title: 'Home'),
    BnScreen(widget: UsersScreen(), title: 'Users'),
    const BnScreen(widget: CategoriesScreen(), title: 'Categories'),
    const BnScreen(widget: SettingsScreen(), title: 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_current].title),
      ),
      body: _screens[_current].widget,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.grey.shade300,
        // selectedLabelStyle: TextStyle(letterSpacing: 2.5),
        elevation: 0,
        onTap: (int index) {
          setState(() => _current = index);
        },
        currentIndex: _current,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Users',
              activeIcon: Icon(Icons.person)),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: 'Category',
              activeIcon: Icon(Icons.category)),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'Settings',
              activeIcon: Icon(Icons.settings)),
        ],
      ),
    );
  }
}
