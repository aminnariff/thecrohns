import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Controller/ReminderProvider.dart';


class ReminderDetailsScreen extends StatelessWidget {
  final Reminder reminder;

  ReminderDetailsScreen(this.reminder);

  @override
  Widget build(BuildContext context) {
    final reminderProvider =
        Provider.of<ReminderProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Reminder Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              reminder.text,
              style: TextStyle(
                fontWeight:
                    reminder.isRead ? FontWeight.normal : FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                reminderProvider.markAsRead(reminder);
                Navigator.pop(context, true);
              },
              child: Text('Done'),
            ),
          ],
        ),
      ),
    );
  }
}
