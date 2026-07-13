import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final String username;
  final String caption;
  final int likes;
  final int comments;

  const VideoCard({
    super.key,
    required this.username,
    required this.caption,
    required this.likes,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.black,
          width: double.infinity,
          height: double.infinity,
          child: const Center(
            child: Icon(
              Icons.play_circle_fill,
              color: Colors.deepPurple,
              size: 100,
            ),
          ),
        ),

        Positioned(
          bottom: 30,
          left: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "@$username",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                caption,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),

        Positioned(
          right: 15,
          bottom: 40,
          child: Column(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundColor: Colors.deepPurple,
                child: Icon(Icons.person, color: Colors.white),
              ),

              const SizedBox(height: 20),

              const Icon(Icons.favorite,
                  color: Colors.white, size: 35),
              Text(
                "$likes",
                style: const TextStyle(color: Colors.white),
              ),

              const SizedBox(height: 20),

              const Icon(Icons.comment,
                  color: Colors.white, size: 35),
              Text(
                "$comments",
                style: const TextStyle(color: Colors.white),
              ),

              const SizedBox(height: 20),

              const Icon(Icons.share,
                  color: Colors.white, size: 35),
            ],
          ),
        ),
      ],
    );
  }
}
