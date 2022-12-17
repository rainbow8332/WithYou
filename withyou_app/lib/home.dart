import 'dart:async';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List imageName; // 반복할 이미지들
  late int currentImage; // 현재이미지
  late List textNameTitle; // 반복할 텍스트들
  late List textNameContents; // 반복할 텍스트들
  late List textNameColors; // 반복할 텍스트 색깔 
  Color col = Colors.black;

  @override
  void initState() {
    super.initState();
    imageName = ['pets.jpg', 'puppy.jpg', 'smile.jpg'];

    textNameTitle = ['함께할 개', '우리는 함께', 'Smile'];

    textNameContents = [
      '반려견과 사람이 함께하는 아름다운 동행',
      '가족이자 친구인 소중한 마이펫!',
          '그 미소를 지켜주세요.'
    ];

  

    currentImage = 0;

    // Timer 설치
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      changeImage();
      changeTextTitle();
      // changeTextContents();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // elevation: 0,
        title: SizedBox(
          height: 30,
          child: Image.asset(
            'images/logo04.png',
          ),
        ),
        
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: Stack(
                children: [
                  Card(
                    elevation: 10, // 카드뷰 음영
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      'images/${imageName[currentImage]}',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Center(
                      child: Text(
                        textNameTitle[currentImage],
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 125),
                    child: Center(
                      child: Text(
                        textNameContents[currentImage],
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // --------------- Functions----------------

// 카드뷰 이미지와 텍스트 [S]
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

} // End
