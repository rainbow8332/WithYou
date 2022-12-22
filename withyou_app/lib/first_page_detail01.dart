import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FirstPageDetail01Page extends StatefulWidget {
  const FirstPageDetail01Page({super.key});

  @override
  State<FirstPageDetail01Page> createState() => _FirstPageDetail01PageState();
}

class _FirstPageDetail01PageState extends State<FirstPageDetail01Page> {
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                child: const CircleAvatar(
                                  backgroundImage: AssetImage(
                                    'images/poodel.png',
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                                        children: const [
                                          Text(' 견종 :'),
                                          Text(' 성별 :'),
                                          Text('내용')
                                        ],
                                      ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                
              ],
            ),
          ),
        ),
      ),
    );
  }

  
  
}
