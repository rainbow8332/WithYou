import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).cardColor,
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: Image.asset('images/logo04_1.png'),
                  ),
                  SizedBox(
                    width: 50,
                    height: 45,
                    child: Image.asset('images/logo04_2.png'),
                  ),
                ],
              ),
              SizedBox(
                width: 200,
                child: Image.asset('images/logo04.png'),
              ),
              const SizedBox(
                height: 100,
              ),
              Image.asset('images/splash.jpg'),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 8)).then((value) {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }
}
