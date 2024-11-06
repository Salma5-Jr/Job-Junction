import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color.fromARGB(255, 231, 227, 227),
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
          mainAxisAlignment: MainAxisAlignment.start, // Align children at the top
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0), // Add padding around the image
              child: Image.asset(
                'asset/IMG-20241025-WA0029.jpg',
                width: 300, // Set width of the image
                height: 150, // Set height of the image
                fit: BoxFit.cover, // Fit the image inside the given dimensions
              ),
            ),
            const SizedBox(height: 20), // Space between image and buttons

            TextButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              icon: const Icon(Icons.note),
              label: const Text("About"),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.share),
              label: const Text("Share"),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.settings),
              label: const Text("Settings"),
            ),
          ],
        ),
      ),
    );
  }
}

// Placeholder HomePage class
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(child: Text("Welcome to Home Page")),
    );
  }
}
