import 'package:flutter/material.dart';
import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/routers/routes.dart';
import 'package:journal_linker/widget/onboarding/bottom_clipboard.dart';
import 'package:journal_linker/widget/onboarding/bottom_title_onboarding.dart';

class Onboarding2 extends StatefulWidget {
  final VoidCallback onNextPage;
  const Onboarding2({super.key, required this.onNextPage});

  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
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
                    Png.img_Onboarding2,
                  ),
                  fit: BoxFit.cover,
                )),
          ),
        ),
        Expanded(
            child: BottomTitleOnboarding(
          title: "Meet the needs of the craft",
          action: () {
            widget.onNextPage();
          },
        ))
      ]),
    );
  }
}
