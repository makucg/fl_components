import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Screen'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://newprofilepic2.photo-cdn.net//assets/images/article/profile.jpg'),
              child: Text('DM ', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://newprofilepic2.photo-cdn.net//assets/images/article/profile.jpg'),
          radius: 100,
        ),
      ),
    );
  }
}
