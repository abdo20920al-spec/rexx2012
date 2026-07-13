import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.black,
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.play_circle_fill,
                    size: 100,
                    color: Colors.deepPurple,
                  ),
                ),
                Positioned(
                  bottom: 100,
                  left: 20,
                  child: Text(
                    "@rex_user$index",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  right: 15,
                  bottom: 100,
                  child: Column(
                    children: [
                      Icon(Icons.favorite,
                          color: Colors.white, size: 35),
                      SizedBox(height: 20),
                      Icon(Icons.comment,
                          color: Colors.white, size: 35),
                      SizedBox(height: 20),
                      Icon(Icons.share,
                          color: Colors.white, size: 35),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
