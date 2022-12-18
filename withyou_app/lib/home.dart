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

    //     // 탭바 영역
    controller = TabController(
        length: 3, // 탭 갯수
        vsync: this // this -> home
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        color: Colors.black,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/poodel.png'),
                ),
                accountName: Text('Pikachu'),
                accountEmail: Text('Pikacu@naver.com'),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 19, 75, 11),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
              ),
              ListTile(
                leading: const SizedBox(
                  child: Icon(
                    CupertinoIcons.person_fill,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                title: Text('로그인'),
                trailing: Icon(Icons.add),
              ),
              const ListTile(
                leading: SizedBox(
                  child: Icon(
                    CupertinoIcons.arrowtriangle_right_square_fill,
                    color: Colors.black,
                  ),
                ),
                title: Text('1일 1영상'),
                trailing: Icon(Icons.add),
              ),
              const ListTile(
               leading: SizedBox(
                  child: Icon(
                    CupertinoIcons.paw,
                    color: Colors.black,
                  ),
                ),
                title: Text('너와 나의 연결고리'),
                trailing: Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
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
          Icon(
            CupertinoIcons.bell_fill,
            color: Colors.black,
            size: 30,
          ),
        ],
      ),
      body: TabBarView(
          controller: controller,
          children: const [SecondPage(), FirstPage(), ThirtPage()]),
      bottomNavigationBar: Container(
        color: Colors.amberAccent,
        height: 60,
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: TabBar(
              controller: controller,
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              tabs: const [
                SizedBox(
                  child: Tab(
                    icon: Icon(
                      CupertinoIcons.ellipses_bubble_fill,
                      size: 23,
                    ),
                    text: "Community",
                  ),
                ),
                Tab(
                  icon: Icon(
                    CupertinoIcons.house_fill,
                    size: 23,
                  ),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(
                    Icons.face,
                    size: 23,
                  ),
                  text: "My",
                ),
              ]),
        ),
      ),
    );
  }
} // End

