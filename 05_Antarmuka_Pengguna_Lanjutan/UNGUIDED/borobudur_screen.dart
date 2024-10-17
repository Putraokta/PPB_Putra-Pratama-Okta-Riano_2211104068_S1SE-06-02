import 'package:flutter/material.dart';

class BorobudurScreen extends StatelessWidget {
  const BorobudurScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Candi Borobudur'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.teal.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Text(
                    'Candi Borobudur',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.network(
                        'https://d2ile4x3f22snf.cloudfront.net/wp-content/uploads/sites/210/2017/11/05101441/entrance-candi-borobudur.jpg',
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text(
                  'Candi Borobudur adalah candi Buddha terbesar di dunia dan salah satu monumen Buddha paling terkenal. '
                  'Candi ini terletak di Magelang, Jawa Tengah, Indonesia, dan dibangun pada abad ke-9 oleh dinasti Syailendra. '
                  'Borobudur memiliki desain yang luar biasa dan terdiri dari sembilan platform bertingkat dan sebuah kubah besar di bagian atas. '
                  'Tempat ini merupakan salah satu situs warisan dunia UNESCO.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.brown,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VisitBorobudurScreen()),
                    );
                  },
                  child: const Text('Kunjungi Tempat'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Layar baru setelah menekan tombol "Kunjungi Tempat"
class VisitBorobudurScreen extends StatelessWidget {
  const VisitBorobudurScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Kunjungan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                'https://mmc.tirto.id/image/otf/1024x535/2017/09/05/Borobudur--ISTOCK.jpg',
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Selamat datang di Candi Borobudur! Candi ini adalah destinasi wisata terkenal di Indonesia dan dikunjungi oleh ribuan wisatawan setiap tahun. '
              'Selain menjadi situs warisan dunia, Borobudur juga merupakan tempat ziarah keagamaan dan memiliki pemandangan yang indah di sekitarnya.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
