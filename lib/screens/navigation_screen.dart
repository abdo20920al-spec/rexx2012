import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/upload_screen.dart';
import 'screens/profile_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  int currentIndex = 0;

  final pages = const [
    HomeScreen(),
    UploadScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "الرئيسية",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: "رفع",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "حسابي",
          ),
        ],
      ),
    );
  }
}
