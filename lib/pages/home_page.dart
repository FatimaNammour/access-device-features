import 'package:access_device_features/pages/contacts.dart';
import 'package:flutter/material.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedTab = 0;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("access device features"), elevation: 10),
      extendBody: true,
      body: _currentPage(_selectedTab),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: CrystalNavigationBar(
          currentIndex: _selectedTab,
          height: 10,
          // indicatorColor: Colors.blue,
          unselectedItemColor: Colors.white70,
          backgroundColor: Colors.black.withOpacity(0.1),
          onTap: _handleIndexChanged,
          items: [
            CrystalNavigationBarItem(
              icon: Icons.contact_phone_rounded,
              // unselectedIcon: IconlyLight.home,
            ),
            CrystalNavigationBarItem(
              icon: Icons.location_on,
              // unselectedIcon: IconlyLight.heart,
            ),
            CrystalNavigationBarItem(
              icon: Icons.camera_alt,
              // unselectedIcon: IconlyLight.plus,
            ),
            CrystalNavigationBarItem(
              icon: Icons.filter,
              // unselectedIcon: IconlyLight.search,
            ),
          ],
        ),
      ),
    );
  }

  Widget _currentPage(int index) {
    switch (index) {
      case 1:
        return const SizedBox.expand();
      case 2:
        return const SizedBox.expand();
      case 3:
        return const SizedBox.expand();
      default:
        return const ContactsPage();
    }
  }
}
