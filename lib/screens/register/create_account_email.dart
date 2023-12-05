import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:journal_linker/assets/colors.dart';
import 'package:journal_linker/assets/icons.dart';
import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/widget/appbar/appbar_action.dart';
import 'package:journal_linker/widget/button/button_primary.dart';
import 'package:journal_linker/widget/dismiss_keyboard_widget.dart';
import 'package:journal_linker/widget/input/app_input.dart';

class RegisterScreenEmail extends StatefulWidget {
  const RegisterScreenEmail({super.key});

  @override
  State<RegisterScreenEmail> createState() => _RegisterScreenEmailState();
}

class _RegisterScreenEmailState extends State<RegisterScreenEmail> {
  bool _obscureText = false;
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
        child: Scaffold(
            backgroundColor: whiteColor,
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.fromLTRB(24.sp, 0, 24, 0),
              child: SingleChildScrollView(
                  //padding: EdgeInsets.fromLTRB(24.sp, 0, 24, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    SizedBox(height: 16.0.sp),
                    // Align(
                    //   alignment: Alignment.topLeft,
                    //   child: Padding(
                    //     padding: EdgeInsets.only(
                    //         left: 0.0.sp), // Adjust the left padding as needed
                    //     child: IconButton(
                    //       onPressed: () {
                    //         Navigator.of(context).pop();
                    //       },
                    //       icon: ImageAssets.svgAssets(Svg.icArrowBack),
                    //     ),
                    //   ),
                    // ),
                    // IconButton(
                    //   onPressed: () {
                    //     Navigator.of(context).pop();
                    //   },
                    //   icon: ImageAssets.svgAssets(
                    //     Svg.icArrowBack,
                    //   ),
                    // ),
                    //     AppBarAction(
                    //   title: 'Sign In',
                    //   icLeft: Svg.icArrowBack,
                    //   sizeLeft: 48.sp,
                    //   actionLeft: () {
                    //     Navigator.pop(context);
                    //   },
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: ImageAssets.svgAssets(Svg.icArrowBack,
                              width: 48.sp, height: 48.sp),
                        ),
                        Text(
                          'Sign Up',
                          style: text18.bold.black,
                        ),
                        SizedBox(
                          width: 60.sp,
                        )
                      ],
                    ),
                    SizedBox(height: 32.0.sp),
                    Text(
                      'Complet your account',
                      style: text24.bold.black,
                    ),
                    SizedBox(height: 8.0.sp),
                    Text(
                      'Lorem ipsum dolor sit amet',
                      style: text14.medium.copyWith(color: grayscale70),
                    ),
                    SizedBox(height: 32.0.sp),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'First Name',
                          style: text14.medium.copyWith(color: grayscale70),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.sp, bottom: 16.sp),
                      child: AppInput(
                        hintText: 'Enter your email address',
                        valueStyle: text16.medium,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Last Name',
                          style: text14.medium.copyWith(color: grayscale70),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.sp, bottom: 16.sp),
                      child: AppInput(
                        hintText: 'Enter your name',
                        valueStyle: text16.medium,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'E-mail',
                          style: text14.medium.copyWith(color: grayscale70),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.sp, bottom: 16.sp),
                      child: AppInput(
                        hintText: 'Enter your email',
                        valueStyle: text16.medium,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          style: text14.medium.copyWith(color: grayscale70),
                        ),
                      ],
                    ),
                    //SizedBox(height: 10.0.sp),
                    Padding(
                        padding: EdgeInsets.only(top: 8.sp, bottom: 16.sp),
                        child: TextField(
                          obscureText: !_obscureText,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: inputColor,
                            hintText: 'Enter your password',
                            hintStyle:
                                text16.copyWith(color: grayscale70),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(24.0.sp),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                          ),
                        )),
//);

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Confirm Password',
                          style: text14.medium.copyWith(color: grayscale70),
                        ),
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 8.sp, bottom: 24.sp),
                        child: TextField(
                          obscureText: !_isPasswordVisible,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: inputColor,
                            hintText: 'Enter your password',
                            hintStyle:
                                text16.copyWith(color: grayscale70),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(24.0.sp),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                });
                              },
                            ),
                          ),
                        )),

                    Padding(
                      padding: EdgeInsets.only(bottom: 24.sp),
                      child: ButtonPrimary(
                        onPress: () {},
                        text: 'Sign Up',
                        textSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        borderRadius: 24.sp,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Don’t have an account?',
                        style: text16.medium.copyWith(color: grayscale70),
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
                                          RegisterScreenEmail()), // Replace SignUpPage() with the actual signup page widget
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.sp,
                    )
                  ])),
            ))));
  }
}
