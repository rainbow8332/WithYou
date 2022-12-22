import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class VideoStep01Page extends StatefulWidget {
  const VideoStep01Page({super.key});

  @override
  State<VideoStep01Page> createState() => _VideoStep01PageState();
}

class _VideoStep01PageState extends State<VideoStep01Page> {
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
              child: Text('유튜브 영상'),
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/videostep02Page');
                },
                style: OutlinedButton.styleFrom(
                  // foregroundColor: Colors.green,
                  side: const BorderSide(color: Colors.green, width: 2.0),
                ),
                child: Container(
                  height: 50,
                  width: 100,
                  child: Image.asset('images/step02.png'),
                )),
          ],
        ),
      ),
    );
  }
}
