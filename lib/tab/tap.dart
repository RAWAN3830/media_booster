import 'package:flutter/material.dart';
import '../colors.dart';
import 'Video/Video_main.dart';
import 'home/home_page.dart';
import 'more/more_page.dart';


class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _selectedIndex = 0;

  final List _screen = [
    const HomePage(),
    const Video_screen(),
    const MorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: ColorConstants.primaryColor,
        unselectedItemColor: Colors.white,
        enableFeedback: true,
        currentIndex: _selectedIndex,
        onTap: ((value) {
          setState(() {
            _selectedIndex = value;
          });
        }),
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection),
              activeIcon: Icon(Icons.video_collection),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              activeIcon: Icon(Icons.more_horiz),
              label: ''
          )
        ],
      ),
    );
  }
}
