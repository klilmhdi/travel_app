import 'package:flutter/material.dart';
import 'package:travel_app/pages/about_me_page.dart';

import '../pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = const [HomePage(), AboutMeScreen()];
  int currentIndex = 0;

  void onTap(int idx) {
    setState(() {
      currentIndex = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black54,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label: "My", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
