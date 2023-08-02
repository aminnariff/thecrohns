import 'package:flutter/foundation.dart';

class ReminderProvider extends ChangeNotifier {
  List<Reminder> _reminders = [
    Reminder('Reminder: Eat on time', false),
    Reminder('Reminder: Exercise regularly', false),
    Reminder('Reminder: Take your medicine', false),
  ];

  List<Reminder> get reminders => _reminders;

  void markAsRead(Reminder reminder) {
    reminder.isRead = true;
    notifyListeners();
  }
}

class Reminder {
  final String text;
  bool isRead;

  Reminder(this.text, this.isRead);
}

