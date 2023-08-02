// // // import 'package:flutter/material.dart';

// // // class WelcomeScreen extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: Center(
// // //         child: Column(
// // //           mainAxisAlignment: MainAxisAlignment.center,
// // //           children: [
// // //             Text(
// // //               'Welcome to Crohn\'s',
// // //               style: TextStyle(
// // //                 fontSize: 24,
// // //                 fontWeight: FontWeight.bold,
// // //               ),
// // //             ),
// // //             SizedBox(height: 16),
// // //             Text(
// // //               'Hello, Crohn\'s Patient!',
// // //               style: TextStyle(
// // //                 fontSize: 18,
// // //               ),
// // //             ),
// // //             SizedBox(height: 8),
// // //             Text(
// // //               'We are here to support you on your journey.',
// // //               style: TextStyle(
// // //                 fontSize: 16,
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:amplify_flutter/amplify_flutter.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_tts/flutter_tts.dart';
// // import 'package:thecrohns/screens/homeScreen.dart';
// // import 'package:thecrohns/screens/profileScreen.dart';

// // import '../widgets/customNavBar.dart';

// // class WelcomeScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Color.fromRGBO(35, 47, 52, 1),
// //         title: Text(
// //           'Crohn\'s',
// //           style: TextStyle(
// //             fontSize: 24,
// //             fontWeight: FontWeight.bold,
// //           ),
// //         ),
// //         actions: [
// //           PopupMenuButton<String>(
// //             itemBuilder: (context) => [
// //               PopupMenuItem<String>(
// //                 value: 'profile',
// //                 child: Text(
// //                   'Profile',
// //                   style: TextStyle(
// //                     fontSize: 16,
// //                     color: Colors.black,
// //                   ),
// //                 ),
// //               ),
// //               PopupMenuItem<String>(
// //                 value: 'signOut',
// //                 child: Text(
// //                   'Sign Out',
// //                   style: TextStyle(
// //                     fontSize: 16,
// //                     color: Colors.black,
// //                   ),
// //                 ),
// //               ),
// //             ],
// //             onSelected: (value) {
// //               if (value == 'profile') {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(
// //                     builder: (context) => ProfileScreen(),
// //                   ),
// //                 );
// //               } else if (value == 'signOut') {
// //                 _signOut();
// //               }
// //             },
// //             child: Icon(
// //               Icons.account_circle,
// //               size: 40,
// //               color: Colors.white,
// //             ),
// //           ),
// //         ],
// //       ),
// //       // body: Center(child: Text2Speech()),
// //       body: SingleChildScrollView(
// //       child: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Text(
// //               'Welcome to Crohn\'s',
// //               style: TextStyle(
// //                 fontSize: 24,
// //                 fontWeight: FontWeight.bold,
// //               ),
// //             ),
// //             Card(
// //               elevation: 10,
// //                 shadowColor: Colors.black,
// //                 color: Colors.grey.shade200,
// //                 shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(15.0),
// //                 ),
// //               child: ListTile(
// //                   title: Text(
// //                     'Hello, Crohn\'s Patient!',
// //                     style: TextStyle(
// //                       fontSize: 18,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.black,
// //                     ),
// //                   ),
// //                   subtitle: Text(
// //                     'We are here to support you on your journey. Together, we will conquer Crohn\'s disease. Get informed and lets make living with Crohn\'s easier, one step at a time. Welcome aboard!',
// //                     style: TextStyle(
// //                       fontSize: 16,
// //                       color: Colors.black,
// //                     ),
// //                   ),
// //                 ),
// //             ),
// //             ElevatedButton(
// //                   onPressed: () {
// //                     Text2Speech();
// //                   },
// //                   child: Container(
// //                     height: 50,
// //                     width: 50,
// //                     decoration: const BoxDecoration(
// //                       shape: BoxShape.circle,
// //                       color: Colors.blue,
// //                     ),
// //                     child: const Center(
// //                       child: Icon(
// //                         Icons.volume_up,
// //                         color: Colors.white,
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //           ],
// //         ),
// //       ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //           onPressed: () {
// //             Navigator.push(
// //               context,
// //               MaterialPageRoute(builder: (context) => HomeScreen()),
// //             );
// //           },
// //           child: Icon(
// //             Icons.compare_arrows_rounded,
// //             size: 24,
// //           ),
// //           backgroundColor: Color.fromRGBO(246, 148, 2, 1),
// //         ),
// //         bottomNavigationBar: CustomNavBar(
// //           feedback: true,
// //         ),
// //       ),
// //     );
// //   }
// //   Future<void> _signOut() async {
// //     try {
// //       await Amplify.Auth.signOut();
// //       print('Sign out succeeded');
// //     } catch (e) {
// //       print('Error signing out: $e');
// //     }
// //   }
// // }
// // class Text2Speech extends StatelessWidget {
// //   static FlutterTts flutterTts = FlutterTts();
// //   final TextEditingController textEditingController = TextEditingController();

// //   static initTTS() {
// //     flutterTts.setLanguage("en-US");
// //   }

// //   static speak() {
// //     flutterTts.speak("We are here to support you on your journey. Together, we will conquer Crohn\'s disease. Get informed and lets make living with Crohn\'s easier, one step at a time. Welcome aboard!");
// //   }
// //   //  void textToSpeech(String text) async {
// //   //   flutterTts.speak(text);

// //   //   double volume = 1.0;
// //   //   flutterTts.setVolume(volume);

// //   //   double rate = 1.0;
// //   //   flutterTts.setSpeechRate(rate);
// //   //   //flutterTts.setRate(rate);
    
// //   //   double pitch = 1.0;
// //   //   flutterTts.setPitch(pitch);

// //   //   String language = 'en-US';
// //   //   flutterTts.setLanguage(language);

// //   //   List<String>? voices = await flutterTts.getVoices();
    
// //   //   voices = await flutterTts.getVoicesByLang(language);
// //   //   //print(await flutterTts.);
// //   //   // await flutterTts.setLanguage('en');
// //   //   // await flutterTts.setVolume(0.5);
// //   //   // await flutterTts.setSpeechRate(0.5);
// //   //   // await flutterTts.setPitch(1);
// //   //   // await flutterTts.speak(text);
// //   // }


// //  @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Padding(
// //               padding: const EdgeInsets.symmetric(
// //                 horizontal: 20,
// //                 vertical: 20,
// //               ),
// //               // child: TextFormField(
// //               //   controller: textEditingController,
// //               // ),
// //             ),
// //             ElevatedButton(
// //               onPressed: () {
// //                 speak();
// //               },
// //               child: Container(
// //                 height: 50,
// //                 width: 50,
// //                 decoration: const BoxDecoration(
// //                   shape: BoxShape.circle,
// //                   color: Colors.blue,
// //                 ),
// //                 child: const Center(
// //                   child: Icon(
// //                     Icons.volume_up,
// //                     color: Colors.white,
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// // // class Text3Speech {
// // //   static FlutterTts tts = FlutterTts();

// // //   static initTTS(){
// // //     tts.setLanguage("en-US");
// // //   }

// // //   static speak(){
// // //     tts.speak("Welcome to Crohn\'s");
// // //   }
// // // }


// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: TextToSpeech(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// // class TextToSpeech extends StatefulWidget {
// //   const TextToSpeech({Key? key}) : super(key: key);

// //   @override
// //   _TextToSpeechState createState() => _TextToSpeechState();
// // }

// // class _TextToSpeechState extends State<TextToSpeech> {
// //   bool isSpeaking = false;
// //   final TextEditingController _controller = TextEditingController();
// //   final _flutterTts = FlutterTts();

// //   void initializeTts() {
// //     _flutterTts.setStartHandler(() {
// //       setState(() {
// //         isSpeaking = true;
// //       });
// //     });
// //     _flutterTts.setCompletionHandler(() {
// //       setState(() {
// //         isSpeaking = false;
// //       });
// //     });
// //     _flutterTts.setErrorHandler((message) {
// //       setState(() {
// //         isSpeaking = false;
// //       });
// //     });
// //   }

// //   @override
// //   void initState() {
// //     // TODO: implement initState
// //     super.initState();
// //     initializeTts();
// //   }

// //   void speak() async {
// //     if (_controller.text.isNotEmpty) {
// //       await _flutterTts.speak(_controller.text);
// //     }
// //   }

// //   void stop() async {
// //     await _flutterTts.stop();
// //     setState(() {
// //       isSpeaking = false;
// //     });
// //   }

// //   @override
// //   void dispose() {
// //     _flutterTts.stop();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Text To Speech"),
// //       ),
// //       body: Column(
// //         children: [
// //           Container(
// //             height: 40,
// //             width: double.infinity,
// //             child: TextField(
// //               controller: _controller,
// //             ),
// //           ),
// //           ElevatedButton(
// //             onPressed: () {
// //               isSpeaking ? stop() : speak();
// //             },
// //             child: Text(isSpeaking ? "Stop" : "Speak"),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// class TextToSpeech extends StatefulWidget {
//   const TextToSpeech({Key? key}) : super(key: key);

//   @override
//   _TextToSpeechState createState() => _TextToSpeechState();
// }

// class _TextToSpeechState extends State<TextToSpeech> {
//   bool isSpeaking = false;
//   final _flutterTts = FlutterTts();

//   void initializeTts() {
//     _flutterTts.setStartHandler(() {
//       setState(() {
//         isSpeaking = true;
//       });
//     });
//     _flutterTts.setCompletionHandler(() {
//       setState(() {
//         isSpeaking = false;
//       });
//     });
//     _flutterTts.setErrorHandler((message) {
//       setState(() {
//         isSpeaking = false;
//       });
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     initializeTts();
//   }

//   void speak() async {
//     await _flutterTts.speak(
//       'We are here to support you on your journey. Together, we will conquer Crohn\'s disease. Get informed and lets make living with Crohn\'s easier, one step at a time. Welcome aboard!',
//     );
//   }

//   void stop() async {
//     await _flutterTts.stop();
//     setState(() {
//       isSpeaking = false;
//     });
//   }

//   @override
//   void dispose() {
//     _flutterTts.stop();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Text To Speech"),
//       ),
//       body: Column(
//         children: [
//           Container(
//             height: 40,
//             width: double.infinity,
//           ),
//           ElevatedButton(
//             onPressed: () {
//               isSpeaking ? stop() : speak();
//             },
//             child: Text(isSpeaking ? "Stop" : "Speak"),
//           ),
//         ],
//       ),
//     );
//   }
// // }

// import 'package:amplify_flutter/amplify_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:thecrohns/screens/profileScreen.dart';

// import '../widgets/customNavBar.dart';
// import 'homeScreen.dart';

// class TextToSpeech extends StatefulWidget {
//   const TextToSpeech({Key? key}) : super(key: key);

//   @override
//   _TextToSpeechState createState() => _TextToSpeechState();
// }

// class _TextToSpeechState extends State<TextToSpeech> {
//   bool isSpeaking = false;
//   final _flutterTts = FlutterTts();
  
//   String grettings = "Hello, Crohn's Warriors!";
//   String welcomeText = "WELCOME TO THECROHN\'S";
//   String neededSilence = "   ";
//   String firstP = "Your dedicated companion for information, news, and support. We're here to empower you on your journey to managing Crohn's disease. ";
//   String secondP ="Explore a wealth of valuable resources, from informative articles to expert-recommended food recommendations. Keep track of your meals and journal your progress in our dedicated meal journaling space. And don't forget, we'll be there to remind you to take your medication and eat on time, ensuring you stay on top of your health goals.";
//   String closing = "Together, we'll make living with Crohn's disease easier and more fulfilling. Welcome aboard!";

//   void initializeTts() {
//     _flutterTts.setStartHandler(() {
//       setState(() {
//         isSpeaking = true;
//       });
//     });
//     _flutterTts.setCompletionHandler(() {
//       setState(() {
//         isSpeaking = false;
//       });
//     });
//     _flutterTts.setErrorHandler((message) {
//       setState(() {
//         isSpeaking = false;
//       });
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     initializeTts();
//   }

//   void speak() async {
//     await _flutterTts.speak(grettings+welcomeText+neededSilence+firstP+secondP+closing);
//   }

//   void stop() async {
//     await _flutterTts.stop();
//     setState(() {
//       isSpeaking = false;
//     });
//   }

//   @override
//   void dispose() {
//     _flutterTts.stop();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         isSpeaking ? stop() : speak();
//       },
//       style: ElevatedButton.styleFrom(
//         shape: CircleBorder(),
//         primary: Colors.white, // Change this to your desired color
//       ),
//       child: Container(
//         height: 30,
//         width: 30,
//         decoration: const BoxDecoration(
//           shape: BoxShape.circle,
//           color: Colors.white,
//         ),
//         child: const Center(
//           child: Icon(
//             Icons.volume_up,
//             color: Colors.grey,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   Future<void> _signOut() async {
//     try {
//       await Amplify.Auth.signOut();
//       print('Sign out succeeded');
//     } catch (e) {
//       print('Error signing out: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Color.fromRGBO(35, 47, 52, 1),
//           title: Text(
//             'Welcome to theCrohn\'s',
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
//         body: SingleChildScrollView(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Text(
//                 //   'Welcome to Crohn\'s',
//                 //   style: TextStyle(
//                 //     fontSize: 24,
//                 //     fontWeight: FontWeight.bold,
//                 //   ),
//                 // ),
//                 Card(
//                   elevation: 20,
//                   shadowColor: Colors.black,
//                   color: Colors.grey.shade300,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15.0),
//                   ),
//                   child: ListTile(
//                     title: Text(
//                       "Hello, Crohn's Warriors!",
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                     subtitle: Text(
//                       "Welcome to theCrohn's! \nYour dedicated companion for information, news, and support. We're here to empower you on your journey to managing Crohn's disease.\n\nExplore a wealth of valuable resources, from informative articles to expert-recommended food recommendations. Keep track of your meals and journal your progress in our dedicated meal journaling space.\n\nAnd don't forget, we'll be there to remind you to take your medication and eat on time, ensuring you stay on top of your health goals.\n\nTogether, we'll make living with Crohn's disease easier and more fulfilling. \n\nWelcome aboard!",
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.black,
//                       ),
//                     ),
//                     trailing: Text("Explore!",
//                     style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),
//                 TextToSpeech(),
//               ],
//             ),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => HomeScreen()),
//             );
//           },
//           child: Icon(
//             Icons.compare_arrows_rounded,
//             size: 24,
//           ),
//           backgroundColor: Color.fromRGBO(246, 148, 2, 1),
//         ),
//         bottomNavigationBar: CustomNavBar(
//           feedback: true,
//         ),
//       ),
//     );
//   }
// }

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:thecrohns/screens/profileScreen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/customNavBar.dart';
import 'homeScreen.dart';


class TextToSpeech extends StatefulWidget {
  const TextToSpeech({Key? key}) : super(key: key);

  @override
  _TextToSpeechState createState() => _TextToSpeechState();
}

class _TextToSpeechState extends State<TextToSpeech> {
  bool isSpeaking = false;
  final _flutterTts = FlutterTts();

  String grettings = "Hello, Crohn's Warriors!";
  String welcomeText = "WELCOME TO THECROHN\'S";
  String neededSilence = "   ";
  String firstP =
      "Your dedicated companion for information, news, and support. We're here to empower you on your journey to managing Crohn's disease. ";
  String secondP =
      "Explore a wealth of valuable resources, from informative articles to expert-recommended food recommendations. Keep track of your meals and journal your progress in our dedicated meal journaling space. And don't forget, we'll be there to remind you to take your medication and eat on time, ensuring you stay on top of your health goals.";
  String closing =
      "Together, we'll make living with Crohn's disease easier and more fulfilling. Welcome aboard!";

  void initializeTts() {
    _flutterTts.setStartHandler(() {
      setState(() {
        isSpeaking = true;
      });
    });
    _flutterTts.setCompletionHandler(() {
      setState(() {
        isSpeaking = false;
      });
    });
    _flutterTts.setErrorHandler((message) {
      setState(() {
        isSpeaking = false;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    initializeTts();
  }

  void speak() async {
    await _flutterTts.speak(
        grettings + welcomeText + neededSilence + firstP + secondP + closing);
  }

  void stop() async {
    await _flutterTts.stop();
    setState(() {
      isSpeaking = false;
    });
  }

  @override
  void dispose() {
    _flutterTts.stop();
    super.dispose();
  }

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         isSpeaking ? stop() : speak();
//       },
//       style: ElevatedButton.styleFrom(
//         shape: CircleBorder(),
//         primary: Colors.white, // Change this to your desired color
//       ),
//       child: Container(
//         height: 30,
//         width: 30,
//         decoration: const BoxDecoration(
//           shape: BoxShape.circle,
//           color: Colors.white,
//         ),
//         child: const Center(
//           child: Icon(
//             Icons.volume_up,
//             color: Colors.grey,
//           ),
//         ),
//       ),
//     );
//   }
// }

Future<void> _launchInBrowser(String url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $uri');
    }
  }
@override
Widget build(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(
        onPressed: () {
          isSpeaking ? stop() : speak();
        },
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          primary: Colors.white, // Change this to your desired color
        ),
        child: Container(
          height: 30,
          width: 30,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: const Center(
            child: Icon(
              Icons.volume_up,
              color: Colors.pink,
            ),
          ),
        ),
      ),
      // SizedBox(),
      ElevatedButton(
        onPressed: () {
           _launchInBrowser("https://youtu.be/1QYBiNRu1ok");
          // Add your logic for the second button here
        },
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          primary: Colors.white, // Change this to your desired color
        ),
        child: Container(
          height: 30,
          width: 30,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: const Center(
            child: Icon(
              Icons.link,
              color: Colors.red,
            ),
          ),
        ),
      ),
    ],
  );
}
}


class MyHomePage extends StatelessWidget {

  // Future<ByteData> loadCustomFont() async {
  //   final customFont = await rootBundle.load("assets/fonts/Metropolis-Medium.ttf");
  //   return customFont;
  // }
  
  Future<void> _signOut() async {
    try {
      await Amplify.Auth.signOut();
      print('Sign out succeeded');
    } catch (e) {
      print('Error signing out: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(35, 47, 52, 1),
          title: Text(
            'Welcome to theCrohn\'s',
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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 20,
                  shadowColor: Colors.black,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ListTile(
                    title: Text(
                      "Hello, Crohn's Warriors!",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      "Welcome to theCrohn's! \nYour dedicated companion for information, news, and support. We're here to empower you on your journey to managing Crohn's disease.\n\nExplore a wealth of valuable resources, from informative articles to expert-recommended food recommendations. Keep track of your meals and journal your progress in our dedicated meal journaling space.\n\nAnd don't forget, we'll be there to remind you to take your medication and eat on time, ensuring you stay on top of your health goals.\n\nTogether, we'll make living with Crohn's disease easier and more fulfilling. \n\nWelcome aboard!",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        // fontFamily: loadCustomFont().toString(),
                      ),
                    ),
                    // trailing: GestureDetector(
                    //   onTap: () {
                    //     _launchInBrowser("https://youtu.be/1QYBiNRu1ok");
                    //   },
                    //   child: Text(
                    //     "Explore!",
                    //     style: TextStyle(
                    //       fontSize: 16,
                    //       color: Colors.blue,
                    //       decoration: TextDecoration.underline,
                    //     ),
                    //   ),
                    // ),
                  ),
                ),
                TextToSpeech(),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Icon(
            Icons.compare_arrows_rounded,
            size: 24,
            color: Colors.orange,
          ),
          backgroundColor: Colors.white,
        ),
        bottomNavigationBar: CustomNavBar(
          feedback: true,
        ),
      ),
    );
  }
}
