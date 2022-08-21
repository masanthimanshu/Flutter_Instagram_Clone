import 'package:flutter/material.dart';
import 'package:insta_clone/pages/home_page.dart';
import 'package:insta_clone/pages/notification_page.dart';
import 'package:insta_clone/pages/profile_page.dart';
import 'package:insta_clone/pages/reels_page.dart';
import 'package:insta_clone/pages/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateUser(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    const Home(),
    const Search(),
    const Reels(),
    const Notifications(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Instagram"),
            Row(
              children: const [
                Icon(
                  Icons.add_a_photo_outlined,
                  color: Colors.black,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.messenger_outline,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateUser,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: "Reels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
