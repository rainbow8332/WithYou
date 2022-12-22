import 'package:flutter/material.dart';
import 'package:withyou_app/home.dart';
import 'package:withyou_app/login_page.dart';
import 'package:withyou_app/second_page.dart';
import 'package:withyou_app/splash.dart';
import 'package:withyou_app/third_page.dart';
import 'package:withyou_app/video_page.dart';
import 'package:withyou_app/video_step01.dart';
import 'package:withyou_app/video_step02.dart';

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
        '/thirdPage' : (context) => ThirdPage(),
        '/videoPage' : (context) => VideoPage(),
        '/loginPage' : (context) => LoginPage(),
        '/videostep01Page' : (context) => VideoStep01Page(),
        '/videostep02Page' : (context) => VideoStep02Page(),
      },
    );
  }
}

