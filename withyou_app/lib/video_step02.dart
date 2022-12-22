import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class VideoStep02Page extends StatefulWidget {
  const VideoStep02Page({super.key});

  @override
  State<VideoStep02Page> createState() => _VideoStep02PageState();
}

class _VideoStep02PageState extends State<VideoStep02Page> {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Text('유튜브 영상2'),
            ),
            OutlinedButton(
                onPressed: () {
                  //
                },
                style: OutlinedButton.styleFrom(
                  // foregroundColor: Colors.green,
                  side: const BorderSide(color: Colors.green, width: 2.0),
                ),
                child: Container(
                  height: 50,
                  width: 100,
                  child: Image.asset('images/step03.png'),
                )),
          ],
        ),
      ),
    );
  }
}