import 'package:flutter/material.dart';
import 'package:grocery_shopping/screens/sign_up_screen.dart';
import 'screens/add_number.dart';
import 'screens/welcome_screen.dart';
import 'screens/verify_number_screen.dart';
import 'screens/congratulation_screen.dart';
import 'screens/sign_in_screen.dart';
import 'screens/forgot_password_screen.dart';
import 'screens/notification_screen.dart';
import 'screens/search_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SearchScreen(),
    );
  }
}
