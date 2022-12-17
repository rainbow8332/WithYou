import 'dart:async';

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  //   // 카드뷰 영역_2초마다 변경
  late List imageName; // 반복할 이미지들
  late int currentImage; // 현재이미지
  late List textNameTitle; // 반복할 텍스트들
  late List textNameContents; // 반복할 텍스트들
  late List textNameColors; // 반복할 텍스트 색깔
  // Color col = Colors.black;

  @override
  void initState() {
    super.initState();

    //     // 카드뷰 영역_3초마다 변경
    imageName = ['pets.jpg', 'walwal2.jpg', 'walwal3.jpg'];

    textNameTitle = ['textTitle1.png', 'textTitle3.png', 'textTitle2.png'];

    textNameContents = [
      'textContents1.png',
      'textContents3.png',
      'textContents2.png'
    ];

    currentImage = 0;

    Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      changeImage();
      changeTextTitle();
      // changeTextContents();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    child: Image.asset(
                        'images/${textNameTitle[currentImage]}',
                      ),
                  ),
                  Card(
                    elevation: 7, // 카드뷰 음영
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      'images/${imageName[currentImage]}',
                      // 'images/pets.jpg'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 35,
                    child: Image.asset(
                        'images/${textNameContents[currentImage]}',
                        // 'images/pets.jpg'),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 60,
                      child: Image.asset(
                            'images/subtitle1.png',
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  //   // --------------- Functions----------------

// // 카드뷰 이미지와 텍스트 [S]
  changeImage() {
    setState(() {
      currentImage++;
      if (currentImage >= imageName.length) {
        currentImage = 0;
      }
    });
  }

  changeTextTitle() {
    setState(() {
      currentImage++;
      if (currentImage >= textNameTitle.length) {
        currentImage = 0;
      }
    });
  }

  changeTextContents() {
    setState(() {
      currentImage++;
      if (currentImage >= textNameContents.length) {
        currentImage = 0;
      }
    });
  }
  // 카드뷰 이미지와 텍스트 [E]

}
