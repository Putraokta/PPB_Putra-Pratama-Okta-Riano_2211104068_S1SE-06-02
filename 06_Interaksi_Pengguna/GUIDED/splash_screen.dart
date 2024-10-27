import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import your home screen

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to home screen after 10 seconds
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                HomeScreen()), // Update this to your home screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple, // Background color of the splash screen
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // You can replace this with your app logo
              Text(
                'Rekomendasi Wisata',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.white), // Spinner color
              ),
            ],
          ),
        ),
      ),
    );
  }
}
