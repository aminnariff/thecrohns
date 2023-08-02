// import 'package:amplify_api/amplify_api.dart';
// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
// import 'package:amplify_datastore/amplify_datastore.dart';
// import 'package:amplify_flutter/amplify_flutter.dart';
// import 'package:amplify_storage_s3/amplify_storage_s3.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:provider/provider.dart';
// import 'package:thecrohns/screens/journalScreen.dart';
// import 'Controller/ReminderProvider.dart';
// import 'amplify_flutter.dart';
// import 'amplify_auth_cognito.dart';
// import 'amplifyconfiguration.dart';
// import 'crohnsApp.dart';
// import 'package:thecrohns/const/colors.dart' ;
// import 'package:thecrohns/screens/homeScreen.dart';
// import 'package:thecrohns/screens/profileScreen.dart';
// import 'package:thecrohns/screens/notificationScreen.dart';

// import 'models/ModelProvider.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   bool isAmplifySuccessfullyConfigured = false;
//   try {
//     await _configureAmplify();
//     isAmplifySuccessfullyConfigured = true;
//   } on AmplifyAlreadyConfiguredException {
//     debugPrint('Amplify configuration failed.');
//   }

// // final reminderProvider = ChangeNotifierProvider(
// //   create: (_) => ReminderProvider()
// //   );

//   runApp(
//     ProviderScope(
//       // create: (_) => ReminderProvider(),
//       child: CrohnsApp(
//         isAmplifySuccessfullyConfigured: isAmplifySuccessfullyConfigured,
//       ),
//     ),
//   );
// }

// class CrohnsApp extends StatelessWidget {
//   final bool isAmplifySuccessfullyConfigured;

//   CrohnsApp({required this.isAmplifySuccessfullyConfigured});

//   @override
//   Widget build(BuildContext context) {
//     if (!isAmplifySuccessfullyConfigured) {
//       return MaterialApp(
//         home: Scaffold(
//           body: Center(
//             child: CircularProgressIndicator(),
//           ),
//         ),
//       );
//     }

//     return MaterialApp(
//       title: 'The Crohns',
//       theme: ThemeData(
//         fontFamily: "Metropolis",
//         primarySwatch: Colors.red,
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ButtonStyle(
//             backgroundColor: MaterialStateProperty.all(
//               AppColor.orange,
//             ),
//             shape: MaterialStateProperty.all(
//               StadiumBorder(),
//             ),
//             elevation: MaterialStateProperty.all(0),
//           ),
//         ),
//         textButtonTheme: TextButtonThemeData(
//           style: ButtonStyle(
//             foregroundColor: MaterialStateProperty.all(
//               AppColor.orange,
//             ),
//           ),
//         ),
//         textTheme: TextTheme(
//           headline3: TextStyle(
//             color: AppColor.primary,
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//           headline4: TextStyle(
//             color: AppColor.secondary,
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//           ),
//           headline5: TextStyle(
//             color: AppColor.primary,
//             fontWeight: FontWeight.normal,
//             fontSize: 25,
//           ),
//           headline6: TextStyle(
//             color: AppColor.primary,
//             fontSize: 25,
//           ),
//           bodyText2: TextStyle(
//             color: AppColor.secondary,
//           ),
//         ),
//       ),
//       home: HomeScreen(),
//       routes: {
//         ProfileScreen.routeName: (context) => ProfileScreen(),
//         NotificationScreen.routeName: (context) => NotificationScreen(),
//         JournalScreen.routeName:(context) => JournalScreen(),
//       },
//       onGenerateRoute: (settings) {
//         // Handle other routes here if needed
//         return null;
//       },
//     );
//   }
// }

// Future<void> _configureAmplify() async {
//   await Amplify.addPlugins([
//     AmplifyAuthCognito(),
//     AmplifyDataStore(modelProvider: ModelProvider.instance),
//     AmplifyAPI(),
//   ]);
//   await Amplify.configure(amplifyconfig);
// }

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
// import 'package:amplify_push_notifications_pinpoint/amplify_push_notifications_pinpoint.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thecrohns/api/firebase_api.dart';
import 'package:thecrohns/crohnsApp.dart';
import 'amplifyconfiguration.dart';
import 'models/ModelProvider.dart';

final navigatorKey = GlobalKey<NavigatorState>();

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   print("Handling a background message: ${message.messageId}");
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform,
      );
  await FirebaseApi().initNotifications();

  // FirebaseMessaging messaging = FirebaseMessaging.instance;
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  // NotificationSettings settings = await messaging.requestPermission(
  //   alert: true,
  //   announcement: false,
  //   badge: true,
  //   carPlay: false,
  //   criticalAlert: false,
  //   provisional: false,
  //   sound: true,
  // );

  // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //   print('Got a message whilst in the foreground!');
  //   print('Message data: ${message.data}');

  //   if (message.notification != null) {
  //     print('Message also contained a notification: ${message.notification}');
  //   }
  // });

  // Text2Speech.initTTS();
  bool isAmplifySuccessfullyConfigured = false;
  try {
    await _configureAmplify();
    isAmplifySuccessfullyConfigured = true;
  } on AmplifyAlreadyConfiguredException {
    debugPrint('Amplify configuration failed.');
  }

  // runApp(
  //   ProviderScope(
  //     child: CrohnsApp(
  //       isAmplifySuccessfullyConfigured: isAmplifySuccessfullyConfigured,
  //     ),
  //   ),
  // );
  runApp(
    ProviderScope(
      // child: MyApp(
      child: CrohnsApp(
        isAmplifySuccessfullyConfigured: isAmplifySuccessfullyConfigured,
      ),
    ),
    // ),
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key, required CrohnsApp child});
// @override
// Widget build(BuildContext context) {
//   return MaterialApp(
//     // title: 'Flutter Demo',
//     theme: ThemeData(
//       primarySwatch: Colors.blue,
//     ),
//     navigatorKey: navigatorKey,
//     home:  HomeScreen(),
//     routes: {
//       NotificationScreen.routeName:(context) => const NotificationScreen()
//     },
//   );
// }
// }

Future<void> _configureAmplify() async {
  try {
    await Amplify.addPlugins([
      // AmplifyPushNotificationsPinpoint(),
      AmplifyAuthCognito(),
      AmplifyDataStore(modelProvider: ModelProvider.instance),
      AmplifyAPI(),
      AmplifyStorageS3()
    ]);

    await Amplify.configure(amplifyconfig);
    isAmplifySuccessfullyConfigured:
    true;

    //setState(() => _isAmplifyConfigured = true);
  } catch (e) {
    print(e);
  }
}
  // Future<void> _configureAmplify() async {
  //   // Add the following lines to your app initialization to add the DataStore plugin
  //   // final datastorePlugin =
  //   //     AmplifyDataStore(modelProvider: ModelProvider.instance);
  //   // await Amplify.addPlugin(datastorePlugin);

  //   await Amplify.addPlugins([
  //     AmplifyAuthCognito(),
  //     ]);
  //   try {
  //     await Amplify.configure(amplifyconfig);
  //   } on AmplifyAlreadyConfiguredException {
  //     safePrint(
  //         'Tried to reconfigure Amplify; this can occur when your app restarts on Android.');
  //   }
  // }

  // import 'package:flutter/material.dart';
  // import 'package:amplify_flutter/amplify_flutter.dart';
  // import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  // import 'package:flutter_riverpod/flutter_riverpod.dart';
  // import 'package:thecrohns/Controller/ReminderProvider.dart';
  // import 'package:thecrohns/screens/fitnessScreen.dart';
  // import 'package:thecrohns/screens/foodScreen.dart';
  // import 'package:thecrohns/screens/journalScreen.dart';
  // import 'amplifyconfiguration.dart';
  // import 'authentic.dart';

  // import 'package:thecrohns/const/colors.dart';
  // import 'package:thecrohns/screens/homeScreen.dart';
  // import 'package:thecrohns/screens/profileScreen.dart';

  // Future<void> main() async {
  //   WidgetsFlutterBinding.ensureInitialized();
  //   bool isAmplifySuccessfullyConfigured = false;
  //   try {
  //     await _configureAmplify();
  //     isAmplifySuccessfullyConfigured = true;
  //   } on AmplifyAlreadyConfiguredException {
  //     debugPrint('Amplify configuration failed.');
  //   }

  //   runApp(
  //     ProviderScope(
  //       child: CrohnsApp(
  //         isAmplifySuccessfullyConfigured: isAmplifySuccessfullyConfigured,
  //       ),
  //       // child: MyApp(),
  //     ),
  //   );
  // }

  // class MyApp extends StatelessWidget {
  //   // This widget is the root of your application.
  //   @override
  //   Widget build(BuildContext context) {
  //     return MaterialApp(
  //       title: 'The Crohns',
  //       theme: ThemeData(
  //         fontFamily: "Metropolis",
  //         primarySwatch: Colors.red,
  //         elevatedButtonTheme: ElevatedButtonThemeData(
  //           style: ButtonStyle(
  //             backgroundColor: MaterialStateProperty.all(
  //               AppColor.orange,
  //             ),
  //             shape: MaterialStateProperty.all(
  //               StadiumBorder(),
  //             ),
  //             elevation: MaterialStateProperty.all(0),
  //           ),
  //         ),
  //         textButtonTheme: TextButtonThemeData(
  //           style: ButtonStyle(
  //             foregroundColor: MaterialStateProperty.all(
  //               AppColor.orange,
  //             ),
  //           ),
  //         ),
  //         textTheme: TextTheme(
  //           headline3: TextStyle(
  //             color: AppColor.primary,
  //             fontSize: 16,
  //             fontWeight: FontWeight.bold,
  //           ),
  //           headline4: TextStyle(
  //             color: AppColor.secondary,
  //             fontWeight: FontWeight.bold,
  //             fontSize: 20,
  //           ),
  //           headline5: TextStyle(
  //             color: AppColor.primary,
  //             fontWeight: FontWeight.normal,
  //             fontSize: 25,
  //           ),
  //           headline6: TextStyle(
  //             color: AppColor.primary,
  //             fontSize: 25,
  //           ),
  //           bodyText2: TextStyle(
  //             color: AppColor.secondary,
  //           ),
  //         ),
  //       ),

  //       home: HomeScreen(),
  //       // routes: {
  //       //   '/homeScreen': (context) => HomeScreen(),
  //       //   '/foodScreen': (context) => FoodScreen(),
  //       //   '/profileScreen': (context) => ProfileScreen(),
  //       // },
  //       onGenerateRoute: (settings) {
  //         if (settings.name == FoodScreen.routeName) {
  //           // Return the appropriate MaterialPageRoute or CupertinoPageRoute for FoodScreen
  //           return MaterialPageRoute(
  //             builder: (context) => FoodScreen(),
  //           );
  //         }
  //         // else if (settings.name == FitnessApp.routeName) {
  //         //   // Return the appropriate MaterialPageRoute or CupertinoPageRoute for FoodScreen
  //         //   return MaterialPageRoute(
  //         //     builder: (context) => FitnessApp(),
  //         //   );
  //         // }
  //         else if (settings.name == JournalScreen.routeName) {
  //           // Return the appropriate MaterialPageRoute or CupertinoPageRoute for FoodScreen
  //           return MaterialPageRoute(
  //             builder: (context) => JournalScreen(),
  //           );
  //         }
  //         // Handle other routes here if needed
  //         return null;
  //       },
  //     );
  //   }
  // }

  // Future<void> _configureAmplify() async {
  //   await Amplify.addPlugins([
  //     AmplifyAuthCognito(),
  //   ]);
  //   await Amplify.configure(amplifyconfig);
  // }

  // import 'package:amplify_api/amplify_api.dart';
  // import 'package:amplify_datastore/amplify_datastore.dart';
  // import 'package:amplify_storage_s3/amplify_storage_s3.dart';
  // import 'package:flutter/material.dart';
  // import 'package:amplify_flutter/amplify_flutter.dart';
  // import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  // import 'package:flutter_riverpod/flutter_riverpod.dart';
  // import 'amplifyconfiguration.dart';
  // import 'authentic.dart';
  // import 'models/ModelProvider.dart';

  // Future<void> main() async {
  //   WidgetsFlutterBinding.ensureInitialized();
  //   bool isAmplifySuccessfullyConfigured = false;
  //   try {
  //     await _configureAmplify();
  //     isAmplifySuccessfullyConfigured = true;
  //   } on AmplifyAlreadyConfiguredException {
  //     debugPrint('Amplify configuration failed.');
  //   }

  //   runApp(
  //     ProviderScope(
  //       child: CrohnsApp(
  //         isAmplifySuccessfullyConfigured: isAmplifySuccessfullyConfigured,
  //       ),
  //     ),
  //   );
  // }

  // Future<void> _configureAmplify() async {
  //   await Amplify.addPlugins([
  //     AmplifyAuthCognito(),
  //     AmplifyDataStore(modelProvider: ModelProvider.instance),
  //     AmplifyAPI(),

  //   ]);
  //   await Amplify.configure(amplifyconfig);
  // }
