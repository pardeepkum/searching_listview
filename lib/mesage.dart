import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:pushnotification/main.dart';

class FirebaseApi{
//create a instance of firebase messaging
  final firebaseMessaging = FirebaseMessaging.instance;
//function to initilize the notifications
  Future<void> initNotifications()async{
  await firebaseMessaging.requestPermission();
  final fCMToken = await firebaseMessaging.getToken();
  print('token--->$fCMToken');

    //initlize when further settings for push notification
  initPushNotifications();
  }
  void handleMessage(RemoteMessage? message){
    //if the message is null, do anything

    if(message == null) return;
    //navigate to new screen when message is received and users taps notification
    naviogatorKey.currentState?.pushNamed(
      '/notification_screen',
      arguments: message,
    );
  }
//function to initilize background settings
    Future initPushNotifications()async{
    //handle notification when app terminated and open the aap
      FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

  //attach a listenrs for when a notifications opens the aap
      FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
}
}
