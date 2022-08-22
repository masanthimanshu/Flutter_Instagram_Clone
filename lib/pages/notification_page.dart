import 'package:flutter/material.dart';
import 'package:insta_clone/components/notification.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 30, itemBuilder: (e, index) {
      return const NotificationContent();
    });
  }
}
