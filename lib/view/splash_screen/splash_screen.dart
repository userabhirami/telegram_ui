import 'dart:async';

import 'package:flutter/material.dart';
import 'package:telegram/utils/colour_constant.dart';
import 'package:telegram/utils/image_constant.dart';
import 'package:telegram/view/home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.white,
      body: Center(
        child: Container(
            height: 200,
            width: 200,
            child: Image.asset(ImageList.telegramlogo)),
      ),
    );
  }
}
