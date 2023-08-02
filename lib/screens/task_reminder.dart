// import 'package:amplify_flutter/amplify_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:thecrohns/models/ModelProvider.dart';
// import 'package:thecrohns/screens/profileScreen.dart';
// import 'package:url_launcher/url_launcher.dart';

// import '../widgets/customNavBar.dart';

// // void main() => runApp(FitnessApp());

// class TaskReminder extends StatelessWidget {
//   static const routeName = "/taskReminder";



// Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Color.fromRGBO(35, 47, 52, 1),
//           title: Text(
//             'Crohn\'s',
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           actions: [
//             PopupMenuButton<String>(
//               itemBuilder: (context) => [
//                 PopupMenuItem<String>(
//                   value: 'profile',
//                   child: Text(
//                     'Profile',
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//                 PopupMenuItem<String>(
//                   value: 'signOut',
//                   child: Text(
//                     'Sign Out',
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ],
//               onSelected: (value) {
//                 if (value == 'profile') {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => ProfileScreen(),
//                     ),
//                   );
//                 } else if (value == 'signOut') {
//                   _signOut();
//                 }
//               },
//               child: Icon(
//                 Icons.account_circle,
//                 size: 40,
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//         body: _fitnesspage(context),
//         backgroundColor: Colors.white,
//         bottomNavigationBar: CustomNavBar(
//           feedback: true,
//         ),
//       ),
//     );
//   }

//   Widget _fitnesspage(BuildContext context) {
//     return FutureBuilder<List<Task>>(
//       future: _fetchLearn(), // Call the method to fetch articles asynchronously
//       builder: (BuildContext context, AsyncSnapshot<List<Task>> snapshot) {
//         if (snapshot.hasData) {
//           return ListView.builder(
//             itemCount: snapshot.data!.length,
//             itemBuilder: (BuildContext context, int index) {
//               final learn = snapshot.data![index];
//               return Card(
//                 elevation: 10,
//                 shadowColor: Colors.black,
//                 color: Colors.grey.shade200,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15.0),
//                 ),
//                 child: ListTile(
//                   title: Text(
//                     learn.name.toString(),
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   subtitle: Text(
//                     learn.description.toString(),
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   // onTap: () {
//                   //   _launchURL(learn.tutorialLink.toString());
//                   // },
//                 ),
//               );
//             },
//           );
//         } else if (snapshot.hasError) {
//           return Text('Error: ${snapshot.error}');
//         } else {
//           return CircularProgressIndicator(); // Show a loading indicator while fetching data
//         }
//       },
//     );
//   }

//   Future<List<Task>> _fetchLearn() async {
//     try {
//       final learn = await Amplify.DataStore.query(Task.classType);
//       return learn;
//     } catch (e) {
//       print('Error fetching learn: $e');
//       return [];
//     }
//   }

// // Function to launch a URL
//   void _launchURL(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }

//   Future<void> _signOut() async {
//     try {
//       await Amplify.Auth.signOut();
//       print('Sign out succeeded');
//     } catch (e) {
//       print('Error signing out: $e');
//     }
//   }
// }


// import 'package:amplify_flutter/amplify_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:amplify_datastore/amplify_datastore.dart';
// import 'package:thecrohns/screens/profileScreen.dart';

// import '../models/Task.dart';
// import '../widgets/customNavBar.dart';

// class TaskScreen extends StatefulWidget {
//   @override
//   _TaskScreenState createState() => _TaskScreenState();
// }

// class _TaskScreenState extends State<TaskScreen> {
//   List<Task> tasks = [];

//   @override
//   void initState() {
//     super.initState();
//     fetchTasks();
//   }

//   void fetchTasks() async {
//     try {
//       List<Task> fetchedTasks = await Amplify.DataStore.query(Task.classType);
//       setState(() {
//         tasks = fetchedTasks;
//       });
//     } catch (e) {
//       print('Failed to fetch tasks: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromRGBO(35, 47, 52, 1),
//         title: Text(
//           'Crohn\'s Task',
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         actions: [
//           PopupMenuButton<String>(
//             itemBuilder: (context) => [
//               PopupMenuItem<String>(
//                 value: 'profile',
//                 child: Text(
//                   'Profile',
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//               PopupMenuItem<String>(
//                 value: 'signOut',
//                 child: Text(
//                   'Sign Out',
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ],
//             onSelected: (value) {
//               if (value == 'profile') {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ProfileScreen(),
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
//         itemCount: tasks.length,
//         itemBuilder: (context, index) {
//           final task = tasks[index];
//           return ListTile(
//             title: Text(task.name ?? ''),
//             subtitle: Text(task.description ?? ''),
//             trailing: Checkbox(
//               value: task.isComplete ?? false,
//               onChanged: (value) {
//                 // Update the task's completion status
//                 final updatedTask = task.copyWith(isComplete: value);
//                 updateTask(updatedTask);
//               },
//             ),
//           );
//         },
//       ),
//       bottomNavigationBar: CustomNavBar(
//           feedback: true,
//         ),
//       ),
//     );
//   }

//   void updateTask(Task task) async {
//     try {
//       await Amplify.DataStore.save(task);
//     } catch (e) {
//       print('Failed to update task: $e');
//     }
//   }
//   Future<void> _signOut() async {
//     try {
//       await Amplify.Auth.signOut();
//       print('Sign out succeeded');
//     } catch (e) {
//       print('Error signing out: $e');
//     }
//   }
// }


import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:thecrohns/screens/profileScreen.dart';

import '../models/Task.dart';
import '../widgets/customNavBar.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> tasks = [];

  @override
  void initState() {
    super.initState();
    fetchTasks();
  }

  void fetchTasks() async {
    try {
      List<Task> fetchedTasks = await Amplify.DataStore.query(Task.classType);
      setState(() {
        tasks = fetchedTasks;
      });
    } catch (e) {
      print('Failed to fetch tasks: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(35, 47, 52, 1),
          title: Text(
            'Crohn\'s Task',
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
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            final task = tasks[index];
            return Card(
              elevation: 4, // Adjust the elevation as per your preference
              shadowColor:
                  Colors.grey, // Adjust the shadow color as per your preference
              margin: EdgeInsets.symmetric(
                  vertical: 8, horizontal: 16), // Add margin around the card
              child: ListTile(
                title: Text(task.name ?? ''),
                subtitle: Text(task.description ?? ''),
                trailing: CustomCheckbox(
                  value: task.isComplete ?? false,
                  onChanged: (value) {
                    // Update the task's completion status
                    final updatedTask = task.copyWith(isComplete: value);
                    updateTask(updatedTask);
                  },
                  //fillColor: Color,
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: CustomNavBar(
          feedback: true,
        ),
      ),
    );
  }

  void updateTask(Task task) async {
    try {
      await Amplify.DataStore.save(task);
    } catch (e) {
      print('Failed to update task: $e');
    }
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

class CustomCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomCheckbox({
    required this.value,
    required this.onChanged,
  });

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onChanged(!widget.value);
      },
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: widget.value ? Colors.pink : Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: widget.value
            ? Icon(
                Icons.check,
                color: Colors.white,
                size: 20,
              )
            : null,
      ),
    );
  }
}
