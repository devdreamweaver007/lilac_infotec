
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:vehup/Commons/appcolors.dart';
import 'package:vehup/Extentions/screen_size.dart';
import 'package:vehup/Features/Home/View/home_screen.dart';
import 'package:vehup/Features/Profile/View/profile_screen.dart';

class CustomBottomnavBar extends StatefulWidget {
  @override
  _CustomBottomnavBarState createState() => _CustomBottomnavBarState();
}

class _CustomBottomnavBarState extends State<CustomBottomnavBar> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    Screen2(),
    Screen3(),
    Screen4(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], 
      bottomNavigationBar: ConvexAppBar(
        height: ScreenSize.screenwidth*.17,
        backgroundColor: Appcolors.white,
        color: Appcolors.buttonColor,
        activeColor: Appcolors.buttonColor,
        style: TabStyle.reactCircle,
        items: [
          TabItem(icon: Icons.home, title: '',),
          TabItem(icon: Icons.chat_rounded, title: ''),
          TabItem(icon: Icons.paid, title: ''),
          TabItem(icon: Icons.task, title: ''),
          TabItem(icon: Icons.person, title: ''),
        ],
        initialActiveIndex: 0,
        onTap: _onItemTapped, 
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Screen 1', style: TextStyle(fontSize: 24)));
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Screen 2', style: TextStyle(fontSize: 24)));
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Screen 3', style: TextStyle(fontSize: 24)));
  }
}

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Screen 4', style: TextStyle(fontSize: 24)));
  }
}