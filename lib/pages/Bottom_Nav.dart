import 'package:flutter/material.dart';

import 'Home.dart';

class BottomNav extends StatelessWidget {
  BottomNav({super.key});

  final int selectIndex = 0;
  List<Widget> pages = [Home()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.logout_outlined),label:"Logout"),
            BottomNavigationBarItem(icon: Icon(Icons.open_in_new),label: "Open"),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month
            ),label: "Calender"),
          ]),
    );
  }
}
