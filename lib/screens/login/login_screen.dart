import 'package:flutter/material.dart';
import 'package:journal_linker/assets/colors.dart';
import 'package:journal_linker/assets/colors.dart';
import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/screens/login/login_email_screen.dart';
import 'package:journal_linker/widget/button/disable_button.dart';

import '../../assets/colors.dart';
import '../../assets/colors.dart';
import '../../assets/colors.dart';
import '../../assets/index.dart';
import '../../assets/style.dart';
import '../../widget/button/button_login.dart';
import '../../widget/button/button_primary.dart';
import '../../widget/dismiss_keyboard_widget.dart';
import '../../widget/input/app_input.dart';
import '../../widget/touchable_opacity.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DismissKeyboard(
        child: Scaffold(
          backgroundColor: primaryColor,
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(76.sp, 76.sp, 76.sp, 8.sp),
                  child: Column(
                    children: [
                      Text('Hi, Welcome Back!', style: text24.bold.white),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.sp, 0, 20.sp, 60.sp),
                        child: Text('Lorem ipsum dolor sit amet',
                            style: text14.medium.white),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 614.sp,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.sp),
                        topRight: Radius.circular(30.sp),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(24.sp, 47.sp, 24.sp, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Email',
                                  style: text14.medium
                                      .copyWith(color: Color(0xff78828A))),
                              Padding(
                                padding: EdgeInsets.only(top: 8.sp),
                                child: AppInput(
                                  hintText: 'Enter your email address',
                                  valueStyle: text16.medium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 24.sp, vertical: 32.sp),
                          child: ButtonPrimary(
                            onPress: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginEmailScreen(),
                              ));
                            },
                            text: 'Continue with Email',
                            
                            textSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            borderRadius: 24.sp,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  57.sp, 11.sp, 12.sp, 43.sp),
                              child: Container(
                                height: 1.sp,
                                width: 62.sp,
                                color: Color(0xff6C6C6C),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 32.sp),
                              child: Text(
                                'Or continue with',
                                style: text14.semiBold
                                    .copyWith(color: Color(0xff6C6C6C)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  12.sp, 11.sp, 57.sp, 43.sp),
                              child: Container(
                                height: 1.sp,
                                width: 62.sp,
                                color: Color(0xff6C6C6C),
                              ),
                            ),
                          ],
                        ),
                         Padding(
                           padding:  EdgeInsets.symmetric(horizontal: 24.sp),
                           child: ButtonLogin(
                                text: 'Continue with Google',
                                iconAsset: Svg.icGoogle,
                                onPressed: () {                     
                                },
                              ),
                         ),
                            Padding(
                               padding: EdgeInsets.fromLTRB(24.sp,16.sp,24.sp,33.sp),
                              child: ButtonLogin(
                                text: 'Continue with Apple',
                                iconAsset: Svg.icApple,
                                onPressed: () {
                                },
                              ),
                            ),
                        
                       
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',
                              style: text16.semiBold
                                  .copyWith(color: Color(0xff6C6C6C)),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                ' Sign Up',
                                style: text16.semiBold
                                    .copyWith(color: primaryColor),
                              ),
                            ),
                          ],
                        )
                      ]),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
