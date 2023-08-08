import 'package:flutter/material.dart';
import 'add_remider.dart';

class ReminderScreen extends StatefulWidget {
  const ReminderScreen({super.key});

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  final List<String> reminders = [
    'Buy groceries',
    'Call Mom',
    'Meeting at 3 PM',
    'Pay bills',
    'Exercise',
    'Read a book',
    'Finish project',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reminders'),
      ),
      body: ListView.builder(
        itemCount: reminders.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(reminders[index]),
            leading: const Icon(Icons.alarm),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                // Delete reminder from the list
                // You can implement this functionality as needed.
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddReminder();
          }));
          // Implement the functionality to add a new reminder
          // You can use a BottomSheet, Dialog, or another screen to add a reminder.
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
