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

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Stack(
                children: [
                  Card(
                    elevation: 10, // 카드뷰 음영
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                        // 'images/${imageName[currentImage]}',
                        'images/puppy.jpg'),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Center(
                      child: Text(
                        '스마일',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 125),
                    child: Center(
                      child: Text(
                        '그 미소를 지켜 주세요',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
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
}
