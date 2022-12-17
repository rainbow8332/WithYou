// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:withyou_app/Third_page.dart';
// import 'package:withyou_app/first_page.dart';
// import 'package:withyou_app/second_page.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> with TickerProviderStateMixin {
//                                     // with TickerProviderStateMixin : 탭바 사용시 필요 
//   // 탭바 영역
//   late TabController controller;

//   late bool _switch;

//   // 카드뷰 영역_2초마다 변경
//   late List imageName; // 반복할 이미지들
//   late int currentImage; // 현재이미지
//   late List textNameTitle; // 반복할 텍스트들
//   late List textNameContents; // 반복할 텍스트들
//   late List textNameColors; // 반복할 텍스트 색깔
//   // Color col = Colors.black;

//   @override
//   void initState() {
//     super.initState();

//     _switch = true;

//     // 탭바 영역
//     controller = TabController(
//         length: 3, // 탭 갯수
//         vsync: this // this -> home
//         );

//     // 카드뷰 영역_3초마다 변경
//     imageName = ['pets.jpg', 'puppy.jpg', 'smile.jpg'];

//     textNameTitle = ['함께할 개', '우리는 함께', 'Smile'];

//     textNameContents = [
//       '반려견과 사람이 함께하는 아름다운 동행',
//       '가족이자 친구인 소중한 마이펫!',
//       '그 미소를 지켜주세요.'
//     ];

//     currentImage = 0;

//     // Timer 설치
//     Timer.periodic(const Duration(seconds: 3), (Timer timer) {
//       changeImage();
//       changeTextTitle();
//       changeTextContents();
//     });
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         // elevation: 0,
//         title: SizedBox(
//           height: 35,
//           child: Image.asset(
//             'images/logo04.png',
//           ),
//         ),
//         leading: const Icon(
//           // Icons.menu,
//           CupertinoIcons.text_justify,
//           color: Colors.black,
//           size: 30,
//         ),
//         actions: const [
//           Padding(
//             padding: EdgeInsets.only(right: 20),
//             child: SizedBox(
//               height: 20,
//               child: Icon(
//                 CupertinoIcons.bell_fill,
//                 color: Colors.black,
//                 size: 30,
//               ),
//             ),
//           )
//         ],
//         backgroundColor: Colors.white,
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             // TabBarView(
//             //   controller: controller,
//             //   children: const [
//             //     FirstPAge(),
//             //     SecondPage(),
//             //     Third()
//             //   ]
//             // ),
//             Padding(
//               padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
//               child: Stack(
//                 children: [
//                   Card(
//                     elevation: 10, // 카드뷰 음영
//                     clipBehavior: Clip.hardEdge,
//                     child: Image.asset(
//                       'images/${imageName[currentImage]}',
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 50),
//                     child: Center(
//                       child: Text(
//                         textNameTitle[currentImage],
//                         style: const TextStyle(
//                           fontSize: 30,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 125),
//                     child: Center(
//                       child: Text(
//                         textNameContents[currentImage],
//                         style: const TextStyle(
//                           fontSize: 15,
//                           color: Colors.black,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             // CupertinoSwitch(
//             //   value: _switch,
//             //   onChanged: (value) {
//             //     setState(() {
//             //       _switch = value;
//             //     });
//             //   },
//             // ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: Container(
//         color: Colors.amberAccent,
//         height: 75,
//         child: Padding(
//           padding: const EdgeInsets.only(top: 15),
//           child: TabBar(
//               controller: controller,
//               labelColor: Colors.black,
//               indicatorColor: Colors.black,
//               tabs: const [
//                 Tab(
//                   icon: Icon(
//                     CupertinoIcons.ellipses_bubble_fill,
//                     size: 30,
//                   ),
//                   text: "Community",
//                 ),
//                 Tab(
//                   icon: Icon(
//                     CupertinoIcons.house_fill,
//                     size: 30,
//                   ),
//                   text: "Home",
//                 ),
//                 Tab(
//                   icon: Icon(
//                     Icons.face,
//                     size: 30,
//                   ),
//                   text: "My",
//                 ),
//               ]),
//         ),
//       ),
//     );
//   }

//   // --------------- Functions----------------

// // 카드뷰 이미지와 텍스트 [S]
//   changeImage() {
//     setState(() {
//       currentImage++;
//       if (currentImage >= imageName.length) {
//         currentImage = 0;
//       }
//     });
//   }

//   changeTextTitle() {
//     setState(() {
//       currentImage++;
//       if (currentImage >= textNameTitle.length) {
//         currentImage = 0;
//       }
//     });
//   }

//   changeTextContents() {
//     setState(() {
//       currentImage++;
//       if (currentImage >= textNameContents.length) {
//         currentImage = 0;
//       }
//     });
//   }
//   // 카드뷰 이미지와 텍스트 [E]

// } // End


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:withyou_app/third_page.dart';
import 'package:withyou_app/first_page.dart';
import 'package:withyou_app/second_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
                                    // with TickerProviderStateMixin : 탭바 사용시 필요 
  // 탭바 영역
  late TabController controller;


  @override
  void initState() {
    super.initState();

    // 탭바 영역
    controller = TabController(
        length: 3, // 탭 갯수
        vsync: this // this -> home
        );

  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // elevation: 0,
        title: SizedBox(
          height: 35,
          child: Image.asset(
            'images/logo04.png',
          ),
        ),
        leading: const Icon(
          // Icons.menu,
          CupertinoIcons.text_justify,
          color: Colors.black,
          size: 30,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: SizedBox(
              height: 20,
              child: Icon(
                CupertinoIcons.bell_fill,
                color: Colors.black,
                size: 30,
              ),
            ),
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          FirstPage(),
          SecondPage(),
          // Third()
        ]
      ),
      bottomNavigationBar: Container(
        color: Colors.amberAccent,
        height: 75,
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: TabBar(
              controller: controller,
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              tabs: const [
                Tab(
                  icon: Icon(
                    CupertinoIcons.ellipses_bubble_fill,
                    size: 30,
                  ),
                  text: "Community",
                ),
                Tab(
                  icon: Icon(
                    CupertinoIcons.house_fill,
                    size: 30,
                  ),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(
                    Icons.face,
                    size: 30,
                  ),
                  text: "My",
                ),
              ]),
        ),
      ),
    );
  }

  

} // End
