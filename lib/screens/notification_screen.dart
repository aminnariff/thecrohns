      import 'package:amplify_flutter/amplify_flutter.dart';
      import 'package:firebase_messaging/firebase_messaging.dart';
      import 'package:flutter/material.dart';
      import 'package:thecrohns/screens/profileScreen.dart';

      import '../widgets/customNavBar.dart';

      class NotificationScreen extends StatelessWidget {
        const NotificationScreen({Key? key}) : super(key: key);
        static const routeName = '/notificationScreen';


        @override
        Widget build(BuildContext context) {
          final message = ModalRoute.of(context)!.settings.arguments as RemoteMessage;
          // final reminderProvider = Provider.of<ReminderProvider>(context);
          // final List<Reminder> reminders = reminderProvider.reminders;
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
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
            children: [
                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.grey.shade200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ListTile(
                        title: Text(
                          '${message.notification?.title}',
                            style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            ),
                        ),
                        subtitle: Text(
                          '${message.notification?.body}',
                            style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            ),
                        ),
                  // onTap: () {
                  //   _launchURL(
                  //       'https://emedicine.medscape.com/article/172940-overview');
                  // },
                      ),
                  ),
                  // Text('${message.notification?.title}'),
                  // Text('${message.notification?.body}'),
                  // Text('${message.data}')
                ],
                
            // body: ListView.builder(
            //   itemCount: reminders.length,
            //   itemBuilder: (ctx, index) {
            //     final reminder = reminders[index];
            //     return Card(
            //       color: reminder.isRead ? Colors.grey[300] : Colors.white,
            //       child: ListTile(
            //         title: Text(
            //           reminder.text,
            //           style: TextStyle(
            //             fontWeight:
            //                 reminder.isRead ? FontWeight.normal : FontWeight.bold,
            //           ),
            //         ),
            //         onTap: () async {
            //           final result = await Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //               builder: (context) => ReminderDetailsScreen(reminder),
            //             ),
            //           );
            //           if (result == true) {
            //             reminderProvider.markAsRead(reminder);
            //           }
            //         },
            //       ),
            //     );
            //   },
            // ),
              ),
            ),
              

            bottomNavigationBar: CustomNavBar(
              feedback: true,
            ),
          ));
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