import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        child: Center(
          child: Column(
            children: [
              Image.asset('images/logintitle.png'),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Container(
                  height: 75,
                  width: 75,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/login01.png'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 50,right: 50),
                child: TextField(
                  // controller: userIdController,
                  decoration: InputDecoration(
                    label: Text('사용자 아이디를 입력하세요.'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: TextField(
                  obscureText: true,
                  // controller: passwordController,
                  decoration: InputDecoration(
                    label: Text('패스워드를 입력하세요.'),
                  ),
                ),
              ),
              // ElevatedButton(
              //     onPressed: () {
              //       if (userIdController.text.trim().isEmpty ||
              //           passwordController.text.trim().isEmpty) {
              //         errorSnackBar(context);
              //       } else {
              //         if (userIdController.text.trim() == 'root' &&
              //             passwordController.text.trim() == 'qwer1234') {
              //           _showDialog(context, userIdController.text,
              //               passwordController.text);
              //         } else {
              //           checkSnackBar(context);
              //         }
              //       }
              //     },
              //     child: Text('Log in'))
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  height: 50,
                  width: 100,
                  child: OutlinedButton(
                    onPressed: () {
                      //
                    },
                    style: OutlinedButton.styleFrom(
                      // foregroundColor: Colors.green,
                      side: const BorderSide(color: Colors.green, width: 2.0),
                      
                    ),
                    child: Image.asset('images/logintext.png')
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
