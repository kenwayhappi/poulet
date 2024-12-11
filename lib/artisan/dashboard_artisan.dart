import 'package:flutter/material.dart';
import 'package:projet1/artisan/home_page_artisan.dart';
import 'package:projet1/artisan/tools_page_artisan.dart';
import 'package:projet1/artisan/profile_page_artisan.dart';  // Assure-toi que c'est la bonne page
import 'package:projet1/artisan/notifications_page_artisan.dart';


class DashboardArtisan extends StatefulWidget {
  const DashboardArtisan({Key? key}) : super(key: key);

  @override
  _DashboardArtisanState createState() => _DashboardArtisanState();
}

class _DashboardArtisanState extends State<DashboardArtisan> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePageArtisan(),
    const ToolsPageArtisan(),
    const NotificationsPageArtisan(),
    const ProfilePageArtisan(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.build), label: 'Tools'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
