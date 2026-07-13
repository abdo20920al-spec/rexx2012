import 'package:flutter/material.dart';
import 'screens/navigation_screen.dart';

void main() {
  runApp(const RexApp());
}

class RexApp extends StatelessWidget {
  const RexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'REX',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const NavigationScreen(),
    );
  }
}
