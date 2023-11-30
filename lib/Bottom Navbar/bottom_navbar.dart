import 'package:flutter/material.dart';
import 'package:gslcweek17/Pages/Favourite.dart';
import 'package:gslcweek17/Pages/Profile.dart';
import 'package:gslcweek17/Pages/Settings.dart';
import 'package:gslcweek17/Pages/home.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyBottomNavBar> {
  int myCurrentIndex = 0;
  List pages = const [
    HomePage(),
    FavouritePage(),
    SettingPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Bottom Navigation Bar'),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 25,
              offset: const Offset(8, 20))
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
              backgroundColor: Colors.white,
              selectedItemColor: Colors.orange,
              unselectedItemColor: Colors.black,
              currentIndex: myCurrentIndex,
              onTap: (index) {
                setState(() {
                  myCurrentIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), label: 'Favourite'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'Setting'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_2_outlined), label: 'Profile'),
              ]),
        ),
      ),
      body: pages[myCurrentIndex],
    );
  }
}
