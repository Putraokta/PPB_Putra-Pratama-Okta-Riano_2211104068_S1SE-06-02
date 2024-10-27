import 'package:flutter/material.dart';
import 'borobudur_screen.dart';
import 'banyumas_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Function to return a list of pages to avoid direct use of `context` in `_pages` initialization
  List<Widget> _buildPages(BuildContext context) {
    return [
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
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
      const ProfileScreen(),
      const Center(child: Text('Explore Tourism Options')),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rekomendasi Wisata'),
      ),
      body: _buildPages(context)[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Tourism',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
