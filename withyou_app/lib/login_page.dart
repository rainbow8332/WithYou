import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        // 햄버거 color
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        // elevation: 0,
        title: Center(
          child: SizedBox(
            height: 35,
            child: Image.asset(
              'images/logo04.png',
            ),
          ),
        ),
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15, top: 5),
            child: Icon(
              CupertinoIcons.bell_fill,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}