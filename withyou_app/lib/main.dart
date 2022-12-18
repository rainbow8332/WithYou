import 'package:flutter/material.dart';
import 'package:withyou_app/home.dart';
import 'package:withyou_app/second_page.dart';
import 'package:withyou_app/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => Splash(),
        '/home' : (context) => Home(),
      },
    );
  }
}

