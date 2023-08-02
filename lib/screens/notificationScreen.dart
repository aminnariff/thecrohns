// import 'package:amplify_flutter/amplify_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:thecrohns/screens/profileScreen.dart';

// import '../widgets/customNavBar.dart';

// class NotificationScreen extends StatefulWidget {
//   static const routeName = "/notificationScreen";

//   @override
//   _NotificationScreenState createState() => _NotificationScreenState();
// }

// class _NotificationScreenState extends State<NotificationScreen> {
//   List<String> notifications = [
//     'Reminder: Eat on time',
//     'Reminder: Exercise regularly',
//     'Reminder: Take your medicine',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//       appBar: AppBar(
//         title: Text('Crohn\'s Notification'),
//         actions: [
//           PopupMenuButton<String>(
//             itemBuilder: (context) => [
//               PopupMenuItem<String>(
//                 value: 'profile',
//                 child: Text('Profile'),
//               ),
//               PopupMenuItem<String>(
//                 value: 'signOut',
//                 child: Text('Sign Out'),
//               ),
//             ],
//             onSelected: (value) {
//               if (value == 'profile') {
//                 Navigator.push(
//                   context,
//                   new MaterialPageRoute(
//                     builder: (context) => new ProfileScreen(),
//                   ),
//                 );
//               } else if (value == 'signOut') {
//                 _signOut();
//               }
//             },
//             child: Icon(
//               Icons.account_circle,
//               size: 40,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//       body: ListView.builder(
//         itemCount: notifications.length,
//         itemBuilder: (ctx, index) {
//           final notification = notifications[index];
//           return Card(
//             child: ListTile(
//               title: Text(notification),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ReminderDetailsScreen(notification),
//                   ),
//                 );
//               },
//             ),
//           );
//         },
//       ),
//       bottomNavigationBar: CustomNavBar(
//         feedback: true,
//       ),
//       )
//     );
//   }
// }
// Future<void> _signOut() async {
//   try {
//     await Amplify.Auth.signOut();
//     print('Sign out succeeded');
//   } catch (e) {
//     print('Error signing out: $e');
//   }
// }
// class ReminderDetailsScreen extends StatelessWidget {
//   final String notification;

//   ReminderDetailsScreen(this.notification);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Reminder Details'),
//       ),
//       body: Center(
//         child: Text(notification),
//       ),
//     );
//   }
// }

// import 'package:amplify_flutter/amplify_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:thecrohns/screens/profileScreen.dart';

// class NotificationScreen extends StatefulWidget {
//   static const routeName = "/notificationScreen";

//   @override
//   _NotificationScreenState createState() => _NotificationScreenState();
// }

// class _NotificationScreenState extends State<NotificationScreen> {
//   List<Reminder> notifications = [
//     Reminder('Reminder: Eat on time', false),
//     Reminder('Reminder: Exercise regularly', true),
//     Reminder('Reminder: Take your medicine', false),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//           home: Scaffold(
//       appBar: AppBar(
//         title: Text('Crohn\'s Notification'),
//         actions: [
//           PopupMenuButton<String>(
//             itemBuilder: (context) => [
//               PopupMenuItem<String>(
//                 value: 'profile',
//                 child: Text('Profile'),
//               ),
//               PopupMenuItem<String>(
//                 value: 'signOut',
//                 child: Text('Sign Out'),
//               ),
//             ],
//             onSelected: (value) {
//               if (value == 'profile') {
//                 Navigator.push(
//                   context,
//                   new MaterialPageRoute(
//                     builder: (context) => new ProfileScreen(),
//                   ),
//                 );
//               } else if (value == 'signOut') {
//                 _signOut();
//               }
//             },
//             child: Icon(
//               Icons.account_circle,
//               size: 40,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//       body: ListView.builder(
//         itemCount: notifications.length,
//         itemBuilder: (ctx, index) {
//           final reminder = notifications[index];
//           return Card(
//             color: reminder.isRead ? Colors.grey[300] : Colors.white,
//             child: ListTile(
//               title: Text(reminder.text),
//               onTap: () {
//                 if (!reminder.isRead) {
//                   reminder.markAsRead();
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => ReminderDetailsScreen(reminder),
//                     ),
//                   );
//                 }
//               },
//             ),
//           );
//         },
//       ),
//           )
//     );
//   }
// }

// Future<void> _signOut() async {
//   try {
//     await Amplify.Auth.signOut();
//     print('Sign out succeeded');
//   } catch (e) {
//     print('Error signing out: $e');
//   }
// }

// class Reminder {
//   final String text;
//   bool isRead;

//   Reminder(this.text, this.isRead);

//   void markAsRead() {
//     isRead = true;
//   }
// }

// class ReminderDetailsScreen extends StatelessWidget {
//   final Reminder reminder;

//   ReminderDetailsScreen(this.reminder);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Reminder Details'),
//       ),
//       body: Center(
//         child: Text(reminder.text),
//       ),
//     );
//   }
  
  

// }

// import 'package:amplify_flutter/amplify_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:thecrohns/screens/profileScreen.dart';

// import '../widgets/customNavBar.dart';

// class NotificationScreen extends StatefulWidget {
//   static const routeName = "/notificationScreen";

//   @override
//   _NotificationScreenState createState() => _NotificationScreenState();
// }

// class _NotificationScreenState extends State<NotificationScreen> {
//   List<Reminder> notifications = [
//     Reminder('Reminder: Eat on time', false),
//     Reminder('Reminder: Exercise regularly', false),
//     Reminder('Reminder: Take your medicine', false),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//       appBar: AppBar(
//         title: Text('Crohn\'s Notification'),
//         actions: [
//           PopupMenuButton<String>(
//             itemBuilder: (context) => [
//               PopupMenuItem<String>(
//                 value: 'profile',
//                 child: Text('Profile'),
//               ),
//               PopupMenuItem<String>(
//                 value: 'signOut',
//                 child: Text('Sign Out'),
//               ),
//             ],
//             onSelected: (value) {
//               if (value == 'profile') {
//                 Navigator.push(
//                   context,
//                   new MaterialPageRoute(
//                     builder: (context) => new ProfileScreen(),
//                   ),
//                 );
//               } else if (value == 'signOut') {
//                 _signOut();
//               }
//             },
//             child: Icon(
//               Icons.account_circle,
//               size: 40,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//       body: ListView.builder(
//         itemCount: notifications.length,
//         itemBuilder: (ctx, index) {
//           final reminder = notifications[index];
//           return Card(
//             color: reminder.isRead ? Colors.grey[300] : Colors.white,
//             child: ListTile(
//               title: Text(
//                 reminder.text,
//                 style: TextStyle(
//                   fontWeight:
//                       reminder.isRead ? FontWeight.normal : FontWeight.bold,
//                 ),
//               ),
//               onTap: () async {
//                 final result = await Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ReminderDetailsScreen(reminder),
//                   ),
//                 );
//                 if (result == true) {
//                   setState(() {
//                     reminder.markAsRead();
//                   });
//                 }
//               },
//             ),
//           );
//         },
//       ),
//       bottomNavigationBar: CustomNavBar(
//         feedback: true,
//       ),
//       )
//     );
//   }
// }

// Future<void> _signOut() async {
//   try {
//     await Amplify.Auth.signOut();
//     print('Sign out succeeded');
//   } catch (e) {
//     print('Error signing out: $e');
//   }
// }

// class Reminder {
//   final String text;
//   bool isRead;

//   Reminder(this.text, this.isRead);

//   void markAsRead() {
//     isRead = true;
//   }
// }

// class ReminderDetailsScreen extends StatelessWidget {
//   final Reminder reminder;

//   ReminderDetailsScreen(this.reminder);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Reminder Details'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(reminder.text),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context, true);
//               },
//               child: Text('Mark as Read'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thecrohns/screens/profileScreen.dart';
import 'package:thecrohns/screens/reminderDetailsScreen.dart';
import '../Controller/ReminderProvider.dart';
import '../widgets/customNavBar.dart';

class NotificationScreen_ extends StatelessWidget {
  static const routeName = "/notificationScreen_";

  @override
  Widget build(BuildContext context) {
    final reminderProvider = Provider.of<ReminderProvider>(context);
    final List<Reminder> reminders = reminderProvider.reminders;
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Crohn\'s Notification',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          PopupMenuButton<String>(
            itemBuilder: (context) => [
              PopupMenuItem<String>(
                value: 'profile',
                child: Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              PopupMenuItem<String>(
                value: 'signOut',
                child: Text(
                  'Sign Out',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
            onSelected: (value) {
              if (value == 'profile') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ),
                );
              } else if (value == 'signOut') {
                _signOut();
              }
            },
            child: Icon(
              Icons.account_circle,
              size: 40,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: reminders.length,
        itemBuilder: (ctx, index) {
          final reminder = reminders[index];
          return Card(
            color: reminder.isRead ? Colors.grey[300] : Colors.white,
            child: ListTile(
              title: Text(
                reminder.text,
                style: TextStyle(
                  fontWeight:
                      reminder.isRead ? FontWeight.normal : FontWeight.bold,
                ),
              ),
              onTap: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReminderDetailsScreen(reminder),
                  ),
                );
                if (result == true) {
                  reminderProvider.markAsRead(reminder);
                }
              },
            ),
          );
        },
      ),
      bottomNavigationBar: CustomNavBar(
        feedback: true,
      ),
      )
    );
  }

  Future<void> _signOut() async {
  try {
    await Amplify.Auth.signOut();
    print('Sign out succeeded');
  } catch (e) {
    print('Error signing out: $e');
  }
}


}
