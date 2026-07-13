import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("الملف الشخصي"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.deepPurple,
            child: Icon(
              Icons.person,
              size: 60,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            "@rex_user",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("120",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text("المتابعون",
                      style: TextStyle(color: Colors.grey)),
                ],
              ),
              Column(
                children: [
                  Text("85",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text("يتابع",
                      style: TextStyle(color: Colors.grey)),
                ],
              ),
              Column(
                children: [
                  Text("45",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text("الفيديوهات",
                      style: TextStyle(color: Colors.grey)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
