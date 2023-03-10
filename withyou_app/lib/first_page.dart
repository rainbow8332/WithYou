import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: 800,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 10),
                child: SizedBox(
                              width: 130,
                              child: Image.asset(
                                'images/subtitle3.png', // 댕댕이 작명소 
                              ),
                            ),
              ),
               SizedBox(
                height: 290,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35, right: 30),
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/firstPageDetail01Page');
                            },
                            child: Image.asset(
                                'images/coca.png',
                                fit: BoxFit.fill,
                              ),
                          ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: SizedBox(
                                height: 30,
                                child: Image.asset(
                                  'images/subtitle5.png', // 너의 이름은? 이름을 지어주세요.
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 10),
                child: SizedBox(
                                width: 110,
                                child: Image.asset(
                                  'images/subtitle4.png', // 일상 이야기 
                                ),
                              ),
              ),
              
              SizedBox(
                height: 300,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35, right: 30),
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.asset(
                              'images/dog.jpg',
                              fit: BoxFit.fill,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: SizedBox(
                                height: 35,
                                child: Image.asset(
                                  'images/subtitle6.png', // 뭐하고 놀았 개~
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              ),
            ],
          )
          
        ),
      ),
    );
  }
}
