import 'package:flutter/material.dart';

class ThirtPage extends StatefulWidget {
  const ThirtPage({super.key});

  @override
  State<ThirtPage> createState() => _ThirtPageState();
}

class _ThirtPageState extends State<ThirtPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('세번째 페이지'),
          )
        ],
      ),
    );
  }
}
