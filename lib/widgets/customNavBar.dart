  // import 'package:clip_shadow/clip_shadow.dart';
 
  // class CustomNavBar extends StatelessWidget {
  //   final bool feedback;
  //   final bool home;
  //   final bool food;
  //   final bool fitness;
  //   final bool noti;

  //   const CustomNavBar(
  //       {Key? key,
  //       this.feedback = false,
  //       this.home = false,
  //       this.food = false,
  //       this.fitness = false,
  //       this.noti = false})
  //       : super(key: key);

  //   @override
  //   Widget build(BuildContext context) {
  //     return SizedBox(
  //       height: 120,
  //       width: Helper.getScreenWidth(context),
  //       child: Stack(
  //         children: [
  //           Align(
  //             alignment: Alignment.bottomCenter,
  //             child: ClipShadow(
  //               boxShadow: [
  //                 BoxShadow(
  //                   color: AppColor.placeholder,
  //                   offset: Offset(
  //                     0,
  //                     -5,
  //                   ),
  //                   blurRadius: 10,
  //                 ),
  //               ],
  //               clipper: CustomNavBarClipper(),
  //               child: Container(
  //                 height: 80,
  //                 width: Helper.getScreenWidth(context),
  //                 padding: const EdgeInsets.symmetric(horizontal: 20),
  //                 color: Colors.white,
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   children: [
  //                     GestureDetector(
  //                       onTap: () {
  //                         if (!home) {
  //                           Navigator.push(
  //                             context,
  //                             MaterialPageRoute(
  //                                 builder: (context) => WelcomeScreen()),
  //                           );

  //                           // Navigator.of(context)
  //                           //     .pushReplacementNamed(HomeScreen.routeName);
  //                         }
  //                       },
  //                       child: Column(
  //                         mainAxisAlignment: MainAxisAlignment.center,
  //                         children: [
  //                           home
  //                               ? Image.asset(
  //                                   Helper.getAssetName(
  //                                       "home_filled.png", "virtual"),
  //                                 )
  //                               : Image.asset(
  //                                   Helper.getAssetName("home.png", "virtual"),
  //                                 ),
  //                           home
  //                               ? Text("",
  //                                   style: TextStyle(color: AppColor.orange))
  //                               : Text(""),
  //                         ],
  //                       ),
  //                     ),
  //                     GestureDetector(
  //                       onTap: () {
  //                         Navigator.push(
  //                           context,
  //                           new MaterialPageRoute(
  //                             builder: (context) => new FoodScreen(),
  //                           ),
  //                         );
  //                         // if (!food) {
  //                         //   Navigator.of(context)
  //                         //       .pushReplacementNamed(FoodScreen.routeName);
  //                         // }
  //                       },
  //                       child: Column(
  //                         mainAxisAlignment: MainAxisAlignment.center,
  //                         children: [
  //                           food
  //                               ? Image.asset(
  //                                   Helper.getAssetName(
  //                                       "salad_filled.png", "virtual"),
  //                                 )
  //                               : Image.asset(
  //                                   Helper.getAssetName("salad.png", "virtual"),
  //                                 ),
  //                           food
  //                               ? Text("",
  //                                   style: TextStyle(color: AppColor.orange))
  //                               : Text(""),
  //                         ],
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       width: 20,
  //                     ),
  //                     GestureDetector(
  //                       onTap: () {
  //                         if (!fitness) {
  //                         Navigator.push(
  //                             context,
  //                             new MaterialPageRoute(
  //                               builder: (context) => new FitnessApp(),
  //                             ),
  //                           );
  //                         }
  //                       },
  //                       child: Column(
  //                         mainAxisAlignment: MainAxisAlignment.center,
  //                         children: [
  //                           fitness
  //                               ? Image.asset(
  //                                   Helper.getAssetName(
  //                                       "fitness_filled.png", "virtual"),
  //                                 )
  //                               : Image.asset(
  //                                   Helper.getAssetName("fitness.png", "virtual"),
  //                                 ),
  //                           fitness
  //                               ? Text("",
  //                                   style: TextStyle(color: AppColor.orange))
  //                               : Text(""),
  //                         ],
  //                       ),
  //                     ),
  //                     GestureDetector(
  //                       onTap: () {
  //                         if (!noti) {
  //                         Navigator.push(
  //                             context,
  //                             new MaterialPageRoute(
  //                               builder: (context) => new TaskScreen(),
  //                             ),
  //                           );
  //                         }
  //                       },
  //                       child: Column(
  //                         mainAxisAlignment: MainAxisAlignment.center,
  //                         children: [
  //                           noti
  //                               ? Image.asset(
  //                                   Helper.getAssetName(
  //                                       "bell_filled.png", "virtual"),
  //                                 )
  //                               : Image.asset(
  //                                   Helper.getAssetName("bell.png", "virtual"),
  //                                 ),
  //                           noti
  //                               ? Text("",
  //                                   style: TextStyle(color: AppColor.orange))
  //                               : Text(""),
  //                         ],
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //           Align(
  //             alignment: Alignment.topCenter,
  //             child: SizedBox(
  //               height: 80,
  //               width: 80,
  //               child: FloatingActionButton(
  //                 elevation: 10,
  //                 backgroundColor: feedback
  //                     ? Color.fromRGBO(246, 148, 2, 1)
  //                     : Color.fromARGB(255, 228, 227, 227),
  //                 onPressed: () {
  //                   Navigator.push(
  //                     context,
  //                     MaterialPageRoute(builder: (context) => TripsListPage()),
  //                   );
  //                   // if (!feedback) {
  //                   //   Navigator.push(
  //                   //     context,
  //                   //     MaterialPageRoute(builder: (context) => JournalScreen()),
  //                   //   );
  //                   //   //Navigator.pushNamed(context, JournalScreen.routeName);
  //                   // }
  //                 },
  //                 child: const Icon(
  //                   Icons.add,
  //                   size: 33,
  //                 color: Colors.black,),
  //               ),
  //             ),
  //           )
  //         ],
  //       ),
  //     );
  //   }
  // }

  // class CustomNavBarClipper extends CustomClipper<Path> {
  //   @override
  //   Path getClip(Size size) {
  //     Path path = Path();
  //     path.moveTo(0, 0);
  //     path.lineTo(size.width * 0.3, 0);
  //     path.quadraticBezierTo(
  //       size.width * 0.375,
  //       0,
  //       size.width * 0.375,
  //       size.height * 0.1,
  //     );
  //     path.cubicTo(
  //       size.width * 0.4,
  //       size.height * 0.9,
  //       size.width * 0.6,
  //       size.height * 0.9,
  //       size.width * 0.625,
  //       size.height * 0.1,
  //     );
  //     path.quadraticBezierTo(
  //       size.width * 0.625,
  //       0,
  //       size.width * 0.7,
  //       0.1,
  //     );
  //     path.lineTo(size.width, 0);
  //     path.lineTo(size.width, size.height);
  //     path.lineTo(0, size.height);
  //     path.lineTo(0, 0);
  //     path.close();
  //     return path;
  //   }

  //   @override
  //   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
  //     return true;
  //   }
  // }

// import 'package:flutter/material.dart';
// import 'package:thecrohns/screens/foodScreen.dart';
// import 'package:thecrohns/screens/journalScreen.dart';
// import 'package:thecrohns/screens/notificationScreen.dart';
// import 'package:thecrohns/screens/profileScreen.dart';
// import 'package:thecrohns/screens/task_reminder.dart';
// import 'package:thecrohns/screens/welcomeScreen.dart';

// import '../const/colors.dart';
// import '../screens/displayJournal.dart';
// import '../screens/fitnessScreen.dart';
// import '../screens/homeScreen.dart';
// import '../screens/notification_screen.dart';
// import '../utils/helper.dart';


// class CustomNavBar extends StatelessWidget {
//   final bool feedback;
//   final bool home;
//   final bool food;
//   final bool fitness;
//   final bool noti;

//   const CustomNavBar({
//     Key? key,
//     this.feedback = false,
//     this.home = false,
//     this.food = false,
//     this.fitness = false,
//     this.noti = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 120,
//       width: MediaQuery.of(context).size.width,
//       child: Stack(
//         children: [
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               height: 80,
//               width: MediaQuery.of(context).size.width,
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: AppColor.placeholder,
//                     offset: Offset(0, -5),
//                     blurRadius: 10,
//                   ),
//                 ],
//               ),
//               child: ClipPath(
//                 clipper: CustomNavBarClipper(),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         if (!home) {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => WelcomeScreen(),
//                             ),
//                           );
//                         }
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           home
//                               ? Icon(
//                                   Icons.home,
//                                   color: Colors.grey,
//                                 )
//                               : Icon(
//                                   Icons.home_filled,
//                                   color: Colors.grey,
//                                 ),
//                           home
//                               ? Text(
//                                   "Home",
//                                   style: TextStyle(color: AppColor.orange),
//                                 )
//                               : Text(""),
//                         ],
//                         // children: [
//                         //   home
//                         //       ? Image.asset(
//                         //           Helper.getAssetName(
//                         //               "home_filled.png", "virtual"),
//                         //         )
//                         //       : Image.asset(
//                         //           Helper.getAssetName("home.png", "virtual"),
//                         //         ),
//                         //   home
//                         //       ? Text("",
//                         //           style: TextStyle(color: AppColor.orange))
//                         //       : Text(""),
//                         // ],
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => FoodScreen(),
//                           ),
//                         );
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           food
//                           ? Icon(
//                             Icons.food_bank,
//                             color: Colors.grey,
//                             size: 33,
//                             )
//                           : Icon(
//                             Icons.food_bank_outlined,
//                             color: Colors.grey,
//                             size: 33,
//                             ),
//                           food
//                             ? Text("",
//                             style: TextStyle(color: AppColor.orange))
//                             : Text(""),
//                           ],
//                         // children: [
//                         //   food
//                         //       ? Image.asset(
//                         //           Helper.getAssetName(
//                         //               "salad_filled.png", "virtual"),
//                         //         )
//                         //       : Image.asset(
//                         //           Helper.getAssetName("salad.png", "virtual"),
//                         //         ),
//                         //   food
//                         //       ? Text("",
//                         //           style: TextStyle(color: AppColor.orange))
//                         //       : Text(""),
//                         // ],
//                       ),
//                     ),
//                     SizedBox(width: 20),
//                     GestureDetector(
//                       onTap: () {
//                         if (!fitness) {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => FitnessApp(),
//                             ),
//                           );
//                         }
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           fitness
//                               ? Icon(
//                                   Icons.fitness_center,
//                                   color: Colors.grey,
//                                 )
//                               : Icon(
//                                   Icons.fitness_center,
//                                   color: Colors.grey,
//                                 ),
//                           fitness
//                               ? Text("",
//                                   style: TextStyle(color: AppColor.orange))
//                               : Text(""),
//                         ],

//                         // children: [
//                         //   fitness
//                         //       ? Image.asset(
//                         //           Helper.getAssetName(
//                         //               "fitness_filled.png", "virtual"),
//                         //         )
//                         //       : Image.asset(
//                         //           Helper.getAssetName("fitness.png", "virtual"),
//                         //         ),
//                         //   fitness
//                         //       ? Text("",
//                         //           style: TextStyle(color: AppColor.orange))
//                         //       : Text(""),
//                         // ],
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         if (!noti) {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => TaskScreen(),
//                             ),
//                           );
//                         }
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           noti
//                               ? Icon(
//                                   Icons.task,
//                                   color: Colors.grey,
//                                 )
//                               : Icon(
//                                   Icons.task,
//                                   color: Colors.grey,
//                                 ),
//                           noti
//                               ? Text("",
//                                   style: TextStyle(color: AppColor.orange))
//                               : Text(""),
//                         ],

//                         // children: [
//                         //   noti
//                         //       ? Image.asset(
//                         //           Helper.getAssetName(
//                         //               "bell_filled.png", "virtual"),
//                         //         )
//                         //       : Image.asset(
//                         //           Helper.getAssetName("bell.png", "virtual"),
//                         //         ),
//                         //   noti
//                         //       ? Text("",
//                         //           style: TextStyle(color: AppColor.orange))
//                         //       : Text(""),
//                         // ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.topCenter,
//             child: SizedBox(
//               height: 80,
//               width: 80,
//               child: FloatingActionButton(
//                 elevation: 10,
//                             backgroundColor: isButtonClicked
//                     ? Colors.grey[700]
//                     : Color.fromARGB(255, 228, 227, 227),

//                 // backgroundColor: feedback
//                 //     ? Color.fromRGBO(246, 148, 2, 1)
//                 //     : Color.fromARGB(255, 228, 227, 227),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => TripsListPage()),
//                   );
//                 },
//                 child: const Icon(
//                   Icons.add,
//                   size: 45,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CustomNavBarClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.moveTo(0, 0);
//     path.lineTo(size.width * 0.3, 0);
//     path.quadraticBezierTo(
//       size.width * 0.375,
//       0,
//       size.width * 0.375,
//       size.height * 0.1,
//     );
//     path.cubicTo(
//       size.width * 0.4,
//       size.height * 0.9,
//       size.width * 0.6,
//       size.height * 0.9,
//       size.width * 0.625,
//       size.height * 0.1,
//     );
//     path.quadraticBezierTo(
//       size.width * 0.625,
//       0,
//       size.width * 0.7,
//       0.1,
//     );
//     path.lineTo(size.width, 0);
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.lineTo(0, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }
import 'package:flutter/material.dart';
import 'package:thecrohns/screens/foodScreen.dart';
import 'package:thecrohns/screens/journalScreen.dart';
import 'package:thecrohns/screens/notificationScreen.dart';
import 'package:thecrohns/screens/profileScreen.dart';
import 'package:thecrohns/screens/task_reminder.dart';
import 'package:thecrohns/screens/welcomeScreen.dart';

import '../const/colors.dart';
import '../screens/displayJournal.dart';
import '../screens/fitnessScreen.dart';
import '../screens/homeScreen.dart';
import '../screens/notification_screen.dart';
import '../utils/helper.dart';

class CustomNavBar extends StatefulWidget {
  final bool feedback;
  final bool home;
  final bool food;
  final bool fitness;
  final bool noti;

  const CustomNavBar({
    Key? key,
    this.feedback = false,
    this.home = false,
    this.food = false,
    this.fitness = false,
    this.noti = false,
  }) : super(key: key);

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  bool isButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColor.placeholder,
                    offset: Offset(0, -5),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: ClipPath(
                clipper: CustomNavBarClipper(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (!widget.home) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyHomePage(),
                            ),
                          );
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          widget.home
                              ? Icon(
                                  Icons.home,
                                  color: Color.fromRGBO(35, 47, 52, 1),
                                )
                              : Icon(
                                  Icons.home_filled,
                                  color: Color.fromRGBO(35, 47, 52, 1),
                                ),
                          widget.home
                              ? Text(
                                  "Home",
                                  style: TextStyle(color: AppColor.orange),
                                )
                              : Text(""),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FoodScreen(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          widget.food
                              ? Icon(
                                  Icons.food_bank,
                                  color: Color.fromRGBO(35, 47, 52, 1),
                                  size: 33,
                                )
                              : Icon(
                                  Icons.food_bank_outlined,
                                  color: Color.fromRGBO(35, 47, 52, 1),
                                  size: 33,
                                ),
                          widget.food
                              ? Text(
                                  "",
                                  style: TextStyle(color: AppColor.orange),
                                )
                              : Text(""),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        if (!widget.fitness) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FitnessApp(),
                            ),
                          );
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          widget.fitness
                              ? Icon(
                                  Icons.fitness_center,
                                  color: Color.fromRGBO(35, 47, 52, 1),
                                )
                              : Icon(
                                  Icons.fitness_center,
                                  color: Color.fromRGBO(35, 47, 52, 1),
                                ),
                          widget.fitness
                              ? Text(
                                  "",
                                  style: TextStyle(color: AppColor.orange),
                                )
                              : Text(""),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!widget.noti) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TaskScreen(),
                            ),
                          );
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          widget.noti
                              ? Icon(
                                  Icons.task,
                                  color: isButtonClicked
                                      ? Color.fromRGBO(35, 47, 52, 1)
                                      : Color.fromRGBO(35, 47, 52, 1),
                                )
                              : Icon(
                                  Icons.task,
                                  color: isButtonClicked
                                      ? Color.fromRGBO(35, 47, 52, 1)
                                      : Color.fromRGBO(35, 47, 52, 1),
                                ),
                          widget.noti
                              ? Text(
                                  "",
                                  style: TextStyle(color: AppColor.orange),
                                )
                              : Text(""),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 80,
              width: 80,
              child: FloatingActionButton(
                elevation: 10,
                backgroundColor: isButtonClicked
                    ? Color.fromRGBO(35, 47, 52, 1)
                    : Color.fromRGBO(35, 47, 52, 1),
                onPressed: () {
                  setState(() {
                    isButtonClicked = true;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TripsListPage()),
                  );
                },
                child: const Icon(
                  Icons.add,
                  size: 45,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomNavBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width * 0.3, 0);
    path.quadraticBezierTo(
      size.width * 0.375,
      0,
      size.width * 0.375,
      size.height * 0.1,
    );
    path.cubicTo(
      size.width * 0.4,
      size.height * 0.9,
      size.width * 0.6,
      size.height * 0.9,
      size.width * 0.625,
      size.height * 0.1,
    );
    path.quadraticBezierTo(
      size.width * 0.625,
      0,
      size.width * 0.7,
      0.1,
    );
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
