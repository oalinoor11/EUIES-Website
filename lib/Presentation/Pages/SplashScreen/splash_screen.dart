import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double height = 50;
  double width = 50;


  @override
  void initState() {
    nextScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedContainer(
          height: width,
          duration: Duration(seconds: 1),
          curve: Curves.bounceOut,
          child: Hero(tag: 'app-logo',
              child: Image.asset("assets/images/logo.png")),
        ),
      ),
    );
  }

  void nextScreen() async{
    await Future.delayed(Duration(microseconds: 10));
    setState(() {
      width = Get.width - 40;
    });
    await Future.delayed(Duration(milliseconds: 2000));
    //Get.offAndToNamed(AppRoutes.LOGINSCREEN);
  }
}