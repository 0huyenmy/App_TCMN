import 'dart:async';

import 'package:flutter/material.dart';
import 'package:journal_linker/assets/colors.dart';
import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/routers/routes.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer(Duration(milliseconds: 1500), () {
      Navigator.pushReplacementNamed(context, RouterName.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 250),
            height: 200.sp,
            width: width,
            child: Center(
              child: Column(
                children: [
                  Text(
                    "CRAPLA",
                    textAlign: TextAlign.center,
                    style: text48.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Explore the world",
                    textAlign: TextAlign.center,
                    style: text18.regular.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: Container()),
          SimpleCircularProgressBar(
            size: 70.sp,
            progressStrokeWidth: 10.sp,
            backStrokeWidth: 10.sp,
            animationDuration: 2,
            mergeMode: true,
            progressColors: const [
              primaryColor,
              Color.fromARGB(255, 24, 180, 164),
              Color.fromARGB(255, 80, 199, 187),
              Color.fromARGB(255, 109, 218, 207),
              Color.fromARGB(255, 181, 244, 238),
            ],
            backColor: const Color.fromARGB(255, 0, 155, 141),
          ),
          SizedBox(
            height: 50.sp,
          )
        ],
      ),
    );
    ;
  }
}
