// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_assesment/screens/instagramHomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        
        
        iconTheme: IconThemeData(color: Colors.black),
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryColor: Colors.black,
          primaryTextTheme: TextTheme(
              titleMedium:
                  TextStyle(color: Colors.black, fontFamily: "assetfont"))),
      home: const InstaHomeScreen(),
    );
  }
}
