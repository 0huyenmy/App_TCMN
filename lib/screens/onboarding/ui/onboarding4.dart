import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/screens/register/register_screen.dart';
import 'package:journal_linker/screens/login/login_screen.dart';
import 'package:journal_linker/widget/onboarding/bottom_clipboard.dart';
import 'package:journal_linker/widget/touchable_opacity.dart';

class Onboarding4 extends StatefulWidget {
  const Onboarding4({super.key});

  @override
  State<Onboarding4> createState() => _Onboarding4State();
}

class _Onboarding4State extends State<Onboarding4> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(children: [
      ClipPath(
        clipper: BottomCurveClipper(),
        child: Container(
          height: height * 0.695,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(),
              image: DecorationImage(
                image: AssetImage(
                  Png.img_Onboarding4,
                ),
                fit: BoxFit.cover,
              )),
        ),
      ),
      Expanded(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            Container(
              width: width * 0.7,
              child: Text(
                "We are here to make your craft easier",
                textAlign: TextAlign.center,
                style: text24.bold
                    .copyWith(color: const Color.fromARGB(255, 24, 24, 24)),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10.sp),
                width: width * 0.7,
                child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    textAlign: TextAlign.center,
                    style: text14.medium.copyWith(
                      color: Color.fromARGB(255, 138, 138, 138),
                    ))),
            TouchableOpacity(
              onTap:(){
               Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ));
              },
              child: Container(
                margin: EdgeInsets.only(top: 30.sp, bottom: 30.sp),
                width: 327.sp,
                height: 58.sp,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(24.sp),
                ),
                child: Center(
                    child: Text(
                  "Get Started",
                  style: text16.medium.copyWith(color: Colors.white),
                )),
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Don’t have an account?',
                style: text16.medium.copyWith(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Register',
                    style: text16.medium.copyWith(color: primaryColor),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Navigate to the signup page here
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  RegisterScreen()), // Replace SignUpPage() with the actual signup page widget
                        );
                      },
                  ),
                ],
              ),
            ),
            Expanded(child: Container())
          ]))
    ]));
  }
}
