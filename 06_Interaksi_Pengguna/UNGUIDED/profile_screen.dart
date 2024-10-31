import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Candi Borobudur',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Candi Borobudur adalah candi Buddha terbesar di dunia dan salah satu situs warisan dunia UNESCO. '
              'Terletak di Magelang, Jawa Tengah, candi ini dibangun pada abad ke-9 dan terkenal dengan arsitektur '
              'dan reliefnya yang memukau, menampilkan cerita-cerita Buddha dalam ribuan panel.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 20.0),
            const Divider(),
            const SizedBox(height: 20.0),
            const Text(
              'Opsi Wisata di Banyumas',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Banyumas memiliki berbagai pilihan wisata menarik, termasuk:\n\n'
              '- Curug Cipendok: Air terjun yang indah dengan pemandangan alam yang asri.\n'
              '- Baturraden: Tempat wisata alam yang menawarkan pemandangan pegunungan, taman, dan kolam air panas.\n'
              '- Museum Wayang: Menampilkan berbagai koleksi wayang yang unik dan sejarahnya.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
