import 'package:flutter/material.dart';
import 'package:quan_ly_hoi/screen/calculator/calculator.dart';
import 'package:quan_ly_hoi/screen/account/account.dart';
import 'package:quan_ly_hoi/screen/home/home.dart';

class MenuBottomScreen extends StatefulWidget {
  @override
  _MenuBottomScreenState createState() => _MenuBottomScreenState();
}

class _MenuBottomScreenState extends State<MenuBottomScreen> {
  int _currentIndex = 0;

  final tabsScreen = [
    HomeScreen(),
    CalculationScreen(),
    AccountScreen(),
  ];

  void _onTap(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabsScreen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Tôi bán',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Tôi',
          )
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green,
        onTap: _onTap,
      ),
    );
  }
}
