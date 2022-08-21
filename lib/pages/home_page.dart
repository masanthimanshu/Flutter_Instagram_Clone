import 'package:flutter/material.dart';
import 'package:insta_clone/components/posts.dart';
import 'package:insta_clone/components/stories.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const List _people = [
    "Anisha",
    "Muskan",
    "Gaurav",
    "Aadya",
    "Riya",
    "Monika",
    "Badal",
    "Lokesh",
    "Sumit",
    "Aniket",
    "Naveen",
    "Payal",
    "Janvi",
    "Megha"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _people.length,
              itemBuilder: (e, index) {
                return BubbleStories(
                  userName: _people[index],
                );
              }),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: _people.length,
              itemBuilder: (e, index) {
                return UserPosts(
                  userName: _people[index],
                );
              }),
        ),
      ],
    );
  }
}
