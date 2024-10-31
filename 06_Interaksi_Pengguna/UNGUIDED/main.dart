
import 'package:flutter/material.dart';
import 'package:project_pencaksilat/pages/home_page.dart';
import 'package:project_pencaksilat/pages/login_page.dart';
import 'package:project_pencaksilat/pages/user_profile_page.dart';

void main() {
  runApp(PencakSilatApp());
}

class PencakSilatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pencak Silat Store',
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: '/login', // Set LoginPage as the initial route
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/profile': (context) => UserProfilePage(),
      },
    );
  }
}


// Menyambung dengan UNGUIDED 7  


