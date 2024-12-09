import 'dart:typed_data'; // Untuk Uint8List
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Uint8List? _webImage; // Untuk Web
  final ImagePicker _picker = ImagePicker();

  // Fungsi untuk memilih gambar dari kamera
  Future<void> _pickImageFromCamera() async {
    try {
      final XFile? pickedFile = await _picker.pickImage(source: ImageSource.camera);
      if (pickedFile != null) {
        // Tunggu `readAsBytes` selesai sebelum memanggil `setState`
        final Uint8List bytes = await pickedFile.readAsBytes();
        setState(() {
          _webImage = bytes;
        });
      }
    } catch (e) {
      print("Error picking image from camera: $e");
    }
  }

  // Fungsi untuk memilih gambar dari galeri
  Future<void> _pickImageFromGallery() async {
    try {
      final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        // Tunggu `readAsBytes` selesai sebelum memanggil `setState`
        final Uint8List bytes = await pickedFile.readAsBytes();
        setState(() {
          _webImage = bytes;
        });
      }
    } catch (e) {
      print("Error picking image from gallery: $e");
    }
  }

  // Fungsi untuk menghapus gambar
  void _deleteImage() {
    setState(() {
      _webImage = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker Demo (Web-Compatible)"),
        centerTitle: true,
        backgroundColor: Colors.purple[600],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Menampilkan gambar atau ikon default
                _webImage != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.memory(
                          _webImage!,
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      )
                    : Icon(
                        Icons.image_outlined,
                        size: 100,
                        color: Colors.grey[400],
                      ),
                SizedBox(height: 20),
                Text(
                  'Choose an option to pick an image',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Tombol kamera
                    ElevatedButton.icon(
                      onPressed: _pickImageFromCamera,
                      icon: Icon(Icons.camera_alt, color: Colors.white),
                      label: Text("Camera"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple[400],
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    // Tombol galeri
                    ElevatedButton.icon(
                      onPressed: _pickImageFromGallery,
                      icon: Icon(Icons.photo, color: Colors.white),
                      label: Text("Gallery"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple[400],
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    // Tombol hapus gambar
                    ElevatedButton.icon(
                      onPressed: _deleteImage,
                      icon: Icon(Icons.delete, color: Colors.white),
                      label: Text("Delete"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[400],
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
