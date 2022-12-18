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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
                          'images/subtitle2.png',
                        ),
      )
    );
  }
}
