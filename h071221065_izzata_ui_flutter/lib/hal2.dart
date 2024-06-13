import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/post_anana.jpg',
    'assets/post_luvluv.jpg',
    'assets/post_sisfo.jpg',
    'assets/post_ukmb.jpg',
    'assets/post_satulimapuluh.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting with Avatar
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  // Greeting
                  Text('Hi, Izzata', style: TextStyle(fontSize: 24)),
                  Spacer(), // Add a spacer to push the avatar to the right
                  // Avatar
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profil_zta.jpg'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Favorite Places Title
            Text('Tempat favorit', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            // Horizontal List of Images
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagePaths.length, // Number of images
                itemBuilder: (context, index) {
                  return Container(
                    width: 150,
                    margin: EdgeInsets.only(right: 10),
                    child: Image.asset(imagePaths[index]), // Using dynamic asset image
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}