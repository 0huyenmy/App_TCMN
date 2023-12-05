import 'package:flutter/material.dart';
import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/routers/routes.dart';
import 'package:journal_linker/widget/onboarding/bottom_clipboard.dart';
import 'package:journal_linker/widget/onboarding/bottom_title_onboarding.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({super.key});

  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(children: [
        ClipPath(
          clipper: BottomCurveClipper(),
          child: Container(
            height: height * 0.73,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(),
                image: DecorationImage(
                  image: AssetImage(
                    Png.img_Onboarding3,
                  ),
                  fit: BoxFit.cover,
                )),
          ),
        ),
        Expanded(
            child: BottomTitleOnboarding(
          title: "Go on craft with a smile",
          action: () {
            Navigator.pushNamed(context, RouterName.onboarding4);
          },
        ))
      ]),
    );
  }
}
