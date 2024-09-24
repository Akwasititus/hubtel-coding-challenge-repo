import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class BottomNav extends StatelessWidget {
  BottomNav({super.key});

  final int selectIndex = 0;
  List<Widget> pages = [const Home()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: true,
          items:  [
            BottomNavigationBarItem(icon: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: const Icon(Icons.home)),label: "Home"),
            const BottomNavigationBarItem(icon: Icon(Icons.send_to_mobile),label:"send"),
            const BottomNavigationBarItem(icon: Icon(Icons.history_edu_rounded, color: Colors.black,),label: "History"),
            const BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined
            ),label: "Scheduled"),
          ]),
    );
  }
}
