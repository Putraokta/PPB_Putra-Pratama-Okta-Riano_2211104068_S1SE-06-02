
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BorobudurScreen(),
    );
  }
}

class BorobudurScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rekomendasi Wisata'),
      ),
      body: SingleChildScrollView(
        // Ditambahkan untuk menghindari overflow
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Widget Text di tengah layar dengan latar belakang
              Center(
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.teal.withOpacity(0.2), // Warna latar belakang
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    'Candi Borobudur',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[900], // Warna teks
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),

              // Stack untuk gambar di tengah dengan background
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Background warna
                    Container(
                      height: MediaQuery.of(context).size.height *
                          0.3, // Gunakan persentase layar
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    // Gambar di tengah
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.network(
                        'https://d2ile4x3f22snf.cloudfront.net/wp-content/uploads/sites/210/2017/11/05101441/entrance-candi-borobudur.jpg', // URL gambar Candi Borobudur
                        height: MediaQuery.of(context).size.height *
                            0.25, // Gunakan persentase layar
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),

              // Deskripsi tempat wisata dengan latar belakang
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.2), // Warna latar belakang
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  'Candi Borobudur adalah candi Buddha terbesar di dunia dan salah satu monumen Buddha paling terkenal. '
                  'Candi ini terletak di Magelang, Jawa Tengah, Indonesia, dan dibangun pada abad ke-9 oleh dinasti Syailendra. '
                  'Borobudur memiliki desain yang luar biasa dan terdiri dari sembilan platform bertingkat dan sebuah kubah besar di bagian atas. '
                  'Tempat ini merupakan salah satu situs warisan dunia UNESCO.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.brown[900], // Warna teks
                  ),
                ),
              ),
              SizedBox(height: 16.0),

              // Tombol Kunjungi Tempat
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigasi ke layar baru
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VisitBorobudurScreen()),
                    );
                  },
                  child: Text('Kunjungi Tempat'),
                ),
              ),
              SizedBox(height: 16.0),

              // Tombol untuk melihat wisata Banyumas
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigasi ke layar wisata Banyumas
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BanyumasTourismScreen()),
                    );
                  },
                  child: Text('Wisata Banyumas'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Kunjungan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Gambar besar
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                'https://mmc.tirto.id/image/otf/1024x535/2017/09/05/Borobudur--ISTOCK.jpg', // URL gambar lain dari Candi Borobudur
                height: MediaQuery.of(context).size.height *
                    0.4, // Gambar lebih besar
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),

            // Teks informasi kunjungan
            Text(
              'Selamat datang di Candi Borobudur! Candi ini adalah destinasi wisata terkenal di Indonesia dan dikunjungi oleh ribuan wisatawan setiap tahun. '
              'Selain menjadi situs warisan dunia, Borobudur juga merupakan tempat ziarah keagamaan dan memiliki pemandangan yang indah di sekitarnya.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),

            // Tombol kembali
            ElevatedButton(
              onPressed: () {
                // Kembali ke layar sebelumnya
                Navigator.pop(context);
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}

// Layar wisata Banyumas
class BanyumasTourismScreen extends StatelessWidget {
  final List<Map<String, String>> tourismData = [
    {
      'title': 'Baturaden',
      'imageUrl':
          'http://1.bp.blogspot.com/-4AVn3266W4g/VEisSZ4f1CI/AAAAAAAAAR4/NBLPJItVJQQ/s1600/objek-wisata-baturraden-banyumas-jawa-tengah-14.jpg',
      'description':
          'Baturaden adalah tempat wisata alam yang terletak di lereng Gunung Slamet dengan udara yang sejuk dan pemandangan yang menakjubkan.'
    },
    {
      'title': 'Curug Cipendok',
      'imageUrl': 'https://ik.trn.asia/uploads/2023/10/1696506316639.jpeg',
      'description':
          'Curug Cipendok adalah air terjun yang indah dengan tinggi sekitar 92 meter, dikelilingi oleh hutan yang asri dan udara yang segar.'
    },
    {
      'title': 'Telaga Sunyi',
      'imageUrl':
          'https://tse3.mm.bing.net/th?id=OIP.V60ommH2owvodQONMNHTegHaFj&pid=Api&P=0&h=180',
      'description':
          'Telaga Sunyi merupakan danau kecil yang memiliki air jernih dan suasana yang tenang, sangat cocok untuk relaksasi.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Banyumas'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: tourismData.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Gambar wisata
                ClipRRect(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(8.0)),
                  child: Image.network(
                    tourismData[index]['imageUrl']!,
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Judul wisata
                      Text(
                        tourismData[index]['title']!,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      // Deskripsi wisata
                      Text(
                        tourismData[index]['description']!,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey[700],
                        ),
                      ),
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
