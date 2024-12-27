import 'package:flutter/material.dart';
import 'package:pertemuan_14/screens/homepage_screen.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomepageScreen(),
    );
  }
}