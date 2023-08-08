import 'package:flutter/material.dart';


class NotificationScren extends StatefulWidget {
  const NotificationScren({super.key});

  @override
  State<NotificationScren> createState() => _NotificationScrenState();
}

class _NotificationScrenState extends State<NotificationScren> {
   final List<String> notifications = [
    'Reminder: Call Mom at 5 PM',
    'You have a meeting at 3 PM',
    'Don\'t forget to take your medication',
    'Exercise time!',
    'Pay your bills by tomorrow',
    'Read a book for 30 minutes',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(notifications[index]),
            leading: const Icon(Icons.notifications),
          );
        },
      ),
    );
  }
}