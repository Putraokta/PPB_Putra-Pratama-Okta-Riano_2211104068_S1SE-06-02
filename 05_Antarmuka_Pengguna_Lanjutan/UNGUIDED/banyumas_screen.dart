import 'package:flutter/material.dart';

class BanyumasTourismScreen extends StatelessWidget {
  const BanyumasTourismScreen({super.key});

  final List<Map<String, String>> tourismData = const [
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
    {
      'title': 'Curug Kembar',
      'imageUrl':
          'https://1.bp.blogspot.com/-pA5jbqwXbD8/UkI0GUZwYrI/AAAAAAAAAn4/ndt4MSl9VCU/s1600/curug+bayan+%25285%2529.JPG',
      'description':
          'Curug Kembar Ketenger merupakan sebuah wisata air terjun yang berlokasi di Desa yang sama yaitu Ketenger, kecamatan Baturraden, Banyumas.'
    },
    {
      'title': 'Wisata Pereng',
      'imageUrl':
          'https://bacotsekali.sgp1.digitaloceanspaces.com/cityawesome/uploads/2023/02/image-129.png',
      'description':
          'Wisata yang menawarkan kesegaran alam dan nuansa pedesaan yang masih sangat asri. Terletak di Kecamatan Cilongok, Kabupaten Banyumas, Jawa Tengah, tempat ini menjadi pilihan tepat bagi Anda yang ingin melepas penat dari hiruk pikuk perkotaan.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Banyumas'),
        backgroundColor: Colors.deepPurple, // AppBar color
      ),
      body: ListView.builder(
        itemCount: tourismData.length,
        itemBuilder: (context, index) {
          final item = tourismData[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Display image
                Image.network(
                  item['imageUrl']!,
                  fit: BoxFit.cover,
                  height: 200, // Fixed height for images
                  width: double.infinity, // Full width
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title text
                      Text(
                        item['title']!,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8), // Space between title and description
                      // Description text
                      Text(
                        item['description']!,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black54, // Lighter color for description
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
