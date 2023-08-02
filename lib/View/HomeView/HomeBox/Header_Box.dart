// import 'package:flutter/material.dart';

// class HeaderBox extends StatelessWidget {
//   const HeaderBox({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Icon(
//                       Icons.location_on_outlined,
//                       size: 15,
//                       color: Colors.grey.shade600,
//                     ),
//                     const SizedBox(width: 5),
//                     Expanded(
//                       child: Text(
//                         '39 Angle Boulevard Mohamed V Et Boulevard Zerktouni Bab Al Gharb Oujda, Oujda 60000',
//                         overflow: TextOverflow.ellipsis,
//                         style: TextStyle(
//                           color: Colors.grey.shade600,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 5),
//                 Text(
//                   'Hello Mohammed',
//                   style: TextStyle(
//                     color: Colors.grey.shade900,
//                     fontSize: 24,
//                     fontWeight: FontWeight.w900,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(width: 20),
//           InkWell(
//             onTap: (() {
//               print('Go To Profile');
//             }),
//             child: Container(
//               height: 43,
//               width: 43,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(7),
//                   image: const DecorationImage(
//                       image: AssetImage(
//                         'assets/user.png',
//                       ),
//                       fit: BoxFit.cover),
//                   boxShadow: const [
//                     BoxShadow(
//                       offset: Offset(2, 2),
//                       blurRadius: 1,
//                       color: Color.fromARGB(82, 0, 0, 0),
//                     )
//                   ]),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:thecrohns/screens/profileScreen.dart';

// class HeaderBox extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
//       decoration: BoxDecoration(
//         color: Colors.grey[300],
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(20.0),
//           bottomRight: Radius.circular(20.0),
//         ),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             'Crohns',
//             style: TextStyle(
//               fontSize: 24.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           IconButton(
//             icon: Icon(Icons.account_circle),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 new MaterialPageRoute(
//                   builder: (context) => new ProfileScreen(),
//                 ),
//               );            },
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

import '../../../screens/profileScreen.dart';

class HeaderBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 80,
      color: Colors.blue, // Customize the header box color as needed
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Crohns',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          PopupMenuButton<String>(
            itemBuilder: (context) => [
              PopupMenuItem<String>(
                value: 'profile',
                child: Text('Profile'),
              ),
              PopupMenuItem<String>(
                value: 'signOut',
                child: Text('Sign Out'),
              ),
            ],
            onSelected: (value) {
              if (value == 'profile') {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new ProfileScreen(),
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

  // void _signOut(BuildContext context) {
  //   // Perform sign out logic here
  //   // For example, show a confirmation dialog and then sign out the user
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) => AlertDialog(
  //       title: Text('Sign Out'),
  //       content: Text('Are you sure you want to sign out?'),
  //       actions: [
  //         TextButton(
  //           onPressed: () {
  //             // Perform sign out actions and navigate to login screen
  //             Navigator.pop(context); // Close the dialog
  //             Navigator.pushNamedAndRemoveUntil(
  //               context,
  //               '/loginScreen',
  //               (route) => false, // Remove all existing routes
  //             );
  //           },
  //           child: Text('Sign Out'),
  //         ),
  //         TextButton(
  //           onPressed: () {
  //             Navigator.pop(context); // Close the dialog
  //           },
  //           child: Text('Cancel'),
  //         ),
  //       ],
  //     ),
  //   );
  // }

