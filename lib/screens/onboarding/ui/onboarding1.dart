import 'package:flutter/material.dart';
import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/routers/routes.dart';
import 'package:journal_linker/widget/onboarding/bottom_clipboard.dart';
import 'package:journal_linker/widget/onboarding/bottom_title_onboarding.dart';

class Onboarding1 extends StatefulWidget {
  final VoidCallback onNextPage;
  const Onboarding1({super.key, required this.onNextPage});

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
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
                    Png.img_donghogiay,
                  ),
                  fit: BoxFit.cover,
                )),
          ),
        ),
        Expanded(
            child: BottomTitleOnboarding(
          title: "Best craft destinations in the world",
          action: () {
            widget.onNextPage();
          },
        ))
      ]),
    );
  }
}
