import 'package:flutter/material.dart';
import 'package:trip_app/page2/location.dart';
import 'package:trip_app/page3/profile_places.dart';
import 'package:trip_app/page3/header_user.dart'; 

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  int currentIndex = 4;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });

    if (index == 0) {
      Navigator.pop(context);
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LocationScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          HeaderAppBar(),
          ProfilePlaces(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xFF4268D3),
        unselectedItemColor: Colors.grey,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: 'Ubicación'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Campana'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Usuario'),
        ],
      ),
    );
  }
}
