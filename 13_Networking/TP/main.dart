import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Controller untuk mengelola state counter
class CounterController extends GetxController {
  /// Variabel reaktif untuk menyimpan nilai counter
  var counter = 0.obs; // Menggunakan .obs agar nilai dapat direaktifkan dan diobservasi

  /// Fungsi untuk menambah nilai counter
  void increment() {
    counter.value++;
  }

  /// Fungsi untuk mereset nilai counter
  void reset() {
    counter.value = 0;
  }
}

class HomePage extends StatelessWidget {
  // Menginisialisasi controller menggunakan Get.put
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App")),
      body: Center(
        child: Obx(() {
          // Observasi perubahan nilai counter dan update UI secara otomatis
          return Text(
            "${controller.counter.value}", // Menampilkan nilai counter
            style: TextStyle(fontSize: 48),
          );
        }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Menambah nilai counter
              controller.increment();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              // Mereset nilai counter
              controller.reset();
            },
            child: Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // Menghilangkan banner debug
    home: HomePage(), // Menampilkan halaman utama
  ));
}
