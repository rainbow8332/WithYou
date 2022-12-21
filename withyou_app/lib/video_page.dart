import 'package:flutter/material.dart';

class VideoPAge extends StatefulWidget {
  const VideoPAge({super.key});

  @override
  State<VideoPAge> createState() => _VideoPAgeState();
}

class _VideoPAgeState extends State<VideoPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('images/videotext.png')
          ],
        ),
      ),
    );
  }
}