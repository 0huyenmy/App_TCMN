import 'package:flutter/material.dart';
import 'package:journal_linker/assets/colors.dart';
import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/screens/onboarding/ui/onboarding1.dart';
import 'package:journal_linker/screens/onboarding/ui/onboarding2.dart';
import 'package:journal_linker/screens/onboarding/ui/onboarding3.dart';
import 'package:journal_linker/screens/onboarding/ui/onboarding4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _pageController = new PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              Onboarding1(onNextPage: () {
                _pageController.animateToPage(1,
                    duration: Duration(milliseconds: 500), curve: Curves.ease);
              }),
              Onboarding2(
                onNextPage: () {
                  _pageController.animateToPage(2,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease);
                },
              ),
              Onboarding3(),
            ],
          ),
          Container(
            alignment: Alignment(0.9, 0.908),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: primaryColor,
                dotColor: textColor,
                dotHeight: 10.sp,
                dotWidth: 10.sp,
                expansionFactor: 5.sp,
                spacing: 6.sp,
              ),
            ),
          )
        ],
      ),
    );
  }
}
