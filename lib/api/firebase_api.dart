import 'dart:convert';
// import 'dart:js';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:thecrohns/main.dart';
import 'package:thecrohns/screens/notification_screen.dart';


Future<void> handleBackgroundMessage(RemoteMessage message) async {
  print('Title: ${message.notification?.title}');
  print('Body: ${message.notification?.body}');
  print('Payload: ${message.data}');


}

class FirebaseApi {
    final _firebaseMessaging = FirebaseMessaging.instance;

    final _androidChannel = const AndroidNotificationChannel(
      'high_importaance_channel',
       'High Importance Notifications',
       description: 'This channel is used for importance notifications',
       importance: Importance.defaultImportance,
       );
    
    final _localNotifications = FlutterLocalNotificationsPlugin();

    void handleMessage(RemoteMessage? message){
      if (message == null ) return;

      navigatorKey.currentState?.pushNamed(
        NotificationScreen.routeName,arguments: message,
        );
    }

    Future initLocalNotifications() async{
      const iOS = IOSInitializationSettings();
      const android = AndroidInitializationSettings('@drawable/ic_launcher');
      const setting = InitializationSettings(android: android, iOS: iOS);

      await _localNotifications.initialize(
        setting,
        onSelectNotification: (payload){
          final message = RemoteMessage.fromMap(jsonEncode(payload!) as Map<String, dynamic>);
          handleMessage(message);
        },
        );

        final platform = _localNotifications.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>();
        await platform?.createNotificationChannel(_androidChannel);
    }

    Future initPushNotifications() async{
      await FirebaseMessaging.instance
      .setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );

      FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
      FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
      FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
      FirebaseMessaging.onMessage.listen((message) {
        final notification = message.notification;
        if (notification == null) return;

        _localNotifications.show(
          notification.hashCode,
           notification.title,
            notification.body,
             NotificationDetails(
              android: AndroidNotificationDetails(
                _androidChannel.id,
                 _androidChannel.name,
                 channelDescription: _androidChannel.description,
                 icon: '@drawable/ic_launcher',
                 ),
             ),
             payload: jsonEncode(message.toMap()),
             );
       });
    }

    Future<void> initNotifications() async{
      await _firebaseMessaging.requestPermission();
      final fmcToken = await _firebaseMessaging.getToken();
      print('Token: $fmcToken');
      initPushNotifications();
      initLocalNotifications();
    }

}