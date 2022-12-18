import 'dart:async';

import 'package:flutter/material.dart';
import 'package:withyou_app/model/dog_breed.dart';
import 'package:horizontal_list/horizontal_list.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> with TickerProviderStateMixin{
  // 탭바 영역
  late TabController controller;

  // 카드뷰 영역_3초마다 변경
  late List imageName; // 반복할 이미지들
  late int currentImage; // 현재이미지
  late List textNameTitle; // 반복할 텍스트들
  late List textNameContents; // 반복할 텍스트들
  late List textNameColors; // 반복할 텍스트 색깔
  // Color col = Colors.black;

  // 견종 리스트
  late List<DogBreedList> dogBreedList;
  late List<String> iconList;

  @override
  void initState() {
    super.initState();

    // 탭바 영역
    controller = TabController(
        length: 3, // 탭 갯수
        vsync: this // this -> home
        );

    //     // 카드뷰 영역_3초마다 변경
    imageName = ['pets.jpg', 'walwal2.jpg', 'walwal4.jpg'];

    textNameTitle = ['textTitle1.png', 'textTitle3.png', 'textTitle2.png'];

    textNameContents = [
      'textContents1.png',
      'textContents3.png',
      'textContents2.png'
    ];

    currentImage = 0;

    // 카드뷰 타이머
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      changeImage();
      changeTextTitle();
      // changeTextContents();
    });

    // 견종 리스트
    dogBreedList = [];
    dogBreedList
        .add(DogBreedList(imagePath: 'images/poodel.png', dogName: '푸들'));
    dogBreedList
        .add(DogBreedList(imagePath: 'images/shihtzu.png', dogName: '시츄'));
    dogBreedList
        .add(DogBreedList(imagePath: 'images/bichon.jpg', dogName: '몽이'));


  } // initState End

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: SizedBox(
                        height: 50,
                        child: Image.asset(
                          'images/${textNameTitle[currentImage]}',
                        ),
                      ),
                    ),
                    Card(
                      elevation: 7, // 카드뷰 음영
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        'images/${imageName[currentImage]}',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 30,
                      child: Image.asset(
                        'images/${textNameContents[currentImage]}',
                        // 'images/pets.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        height: 45,
                        child: Image.asset(
                          'images/subtitle1.png',
                        ),
                      ),
                    ),

                    // Row(
                    //   children: [
                    //     Column(
                    //       children: [
                    //         Container(
                    //           padding: const EdgeInsets.all(2),
                    //           decoration: BoxDecoration(
                    //             gradient: const LinearGradient(
                    //               begin: Alignment.bottomRight,
                    //               end: Alignment.topLeft,
                    //               colors: [
                    //                 Color.fromARGB(255, 36, 81, 38),
                    //                 Color.fromARGB(255, 36, 81, 38),
                    //                 Color.fromARGB(255, 36, 81, 38),
                    //               ],
                    //             ),
                    //             borderRadius: BorderRadius.circular(500),
                    //           ),
                    //           child: const CircleAvatar(
                    //             backgroundImage:
                    //                 AssetImage('images/poodel.png'),
                    //             radius: 50,
                    //           ),
                    //         ),
                    //         const Padding(
                    //           padding: EdgeInsets.all(8.0),
                    //           child: Text('푸들'),
                    //         ),
                    //       ],
                    //     ),
                    //     const SizedBox(
                    //       width: 15,
                    //     ),
                    //     Column(
                    //       children: [
                    //         Container(
                    //           padding: const EdgeInsets.all(2),
                    //           decoration: BoxDecoration(
                    //             gradient: const LinearGradient(
                    //               begin: Alignment.bottomRight,
                    //               end: Alignment.topLeft,
                    //               colors: [
                    //                 Color.fromARGB(255, 36, 81, 38),
                    //                 Color.fromARGB(255, 36, 81, 38),
                    //                 Color.fromARGB(255, 36, 81, 38),
                    //               ],
                    //             ),
                    //             borderRadius: BorderRadius.circular(500),
                    //           ),
                    //           child: const CircleAvatar(
                    //             backgroundImage:
                    //                 AssetImage('images/shihtzu.png'),
                    //             radius: 50,
                    //           ),
                    //         ),
                    //         const Padding(
                    //           padding: EdgeInsets.all(8.0),
                    //           child: Text('시츄'),
                    //         ),
                    //       ],
                    //     ),
                    //     const SizedBox(
                    //       width: 15,
                    //     ),
                    //     Column(
                    //       children: [
                    //         Container(
                    //           padding: const EdgeInsets.all(2),
                    //           decoration: BoxDecoration(
                    //             gradient: const LinearGradient(
                    //               begin: Alignment.bottomRight,
                    //               end: Alignment.topLeft,
                    //               colors: [
                    //                 Color.fromARGB(255, 36, 81, 38),
                    //                 Color.fromARGB(255, 36, 81, 38),
                    //                 Color.fromARGB(255, 36, 81, 38),
                    //                 // Color(0xff4dabf7),
                    //                 // Color(0xffda77f2),
                    //                 // Color(0xfff783ac),
                    //               ],
                    //             ),
                    //             borderRadius: BorderRadius.circular(500),
                    //           ),
                    //           child: const CircleAvatar(
                    //             backgroundImage:
                    //                 AssetImage('images/bichon.jpg'),
                    //             radius: 50,
                    //           ),
                    //         ),
                    //         const Padding(
                    //           padding: EdgeInsets.all(8.0),
                    //           child: Text('몽이'),
                    //         ),
                    //       ],
                    //     )
                    //   ],
                    // )

                    // ListView.builder(
                    //   scrollDirection: Axis.vertical,
                    //   shrinkWrap: true,
                    //   itemCount: dogBreedList.length,
                    //   itemBuilder: (context, index) {
                    //     return GestureDetector(
                    //       onTap: () {
                    //         // DogBreedName.breedName =
                    //       },
                    //       child: Column(children: [
                    //         Container(
                    //           padding: const EdgeInsets.all(2),
                    //         decoration: BoxDecoration(
                    //           gradient: const LinearGradient(
                    //             begin: Alignment.bottomRight,
                    //             end: Alignment.topLeft,
                    //             colors: [
                    //               Color.fromARGB(255, 36, 81, 38),
                    //               Color.fromARGB(255, 36, 81, 38),
                    //               Color.fromARGB(255, 36, 81, 38),
                    //               // Color(0xff4dabf7),
                    //               // Color(0xffda77f2),
                    //               // Color(0xfff783ac),
                    //             ],
                    //           ),
                    //           borderRadius: BorderRadius.circular(500),
                    //         ),
                    //           child: CircleAvatar(
                    //              backgroundImage:
                    //               AssetImage(dogBreedList[index].imagePath),
                    //           radius: 50,
                    //           ),
                              
                    //         ),
                    //         Text(dogBreedList[index].dogName),
                    //       ]),
                    //     );
                    //   },
                    // ),
                  HorizontalListView(
                    enableManualScroll: true,
                    height: 100, 
                    width: 100, 
                    list: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('images/poodel.png'),
                            
                            radius: 50,
                          ),
                          Text('리스트'),
                        ],
                      )

                    ],
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
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
