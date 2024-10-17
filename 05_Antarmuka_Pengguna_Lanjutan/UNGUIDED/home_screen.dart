import 'package:flutter/material.dart';
import 'borobudur_screen.dart';
import 'banyumas_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rekomendasi Wisata'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to BorobudurScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BorobudurScreen(),
                  ),
                );
              },
              child: const Text('Candi Borobudur'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to BanyumasTourismScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BanyumasTourismScreen(),
                  ),
                );
              },
              child: const Text('Wisata Banyumas'),
            ),
          ],
        ),
      ),
    );
  }
}
