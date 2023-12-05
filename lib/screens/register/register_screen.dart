import 'package:flutter/material.dart';
import 'package:journal_linker/assets/colors.dart';
import 'package:journal_linker/assets/icons.dart';
import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/screens/register/create_account_email.dart';
import 'package:journal_linker/widget/appbar/appbar_action.dart';
import 'package:journal_linker/widget/button/button_primary.dart';
import 'package:journal_linker/widget/button/continue_button.dart';
import 'package:journal_linker/widget/dismiss_keyboard_widget.dart';
import 'package:journal_linker/widget/input/app_input.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
        child: Scaffold(
            backgroundColor: maincolor,
            body: SafeArea(
                //child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  SizedBox(height: 74.0.sp),
                  Text(
                    'Create account',
                    style: text24.bold.white,
                  ),
                  SizedBox(height: 8.0.sp),
                  Text(
                    'Lorem ipsum dolor sit amet',
                    style: text16.medium.white,
                  ),
                  SizedBox(height: 60.0.sp),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0.sp),
                          topRight: Radius.circular(30.0.sp),
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(24.sp, 47.sp, 24.sp, 0),
                      child: SingleChildScrollView(
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Email',
                                  style: text14.medium
                                      .copyWith(color: grayscale70),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(top: 8.sp, bottom: 32.sp),
                              child: AppInput(
                                hintText: 'Enter your email address',
                                valueStyle: text16.medium,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 32.sp),
                              child: ButtonPrimary(
                                onPress: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          RegisterScreenEmail(),
                                    ),
                                  );
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
                                Positioned(
                                  left: 0,
                                  child: Container(
                                    height: 1.0.sp,
                                    width:
                                        62.0.sp, // Adjust the width of the line
                                    color: gray,
                                  ),
                                ),
                                SizedBox(width: 12.0.sp),
                                Text(
                                  'Or continue with',
                                  style: text14.copyWith(color: gray),
                                ),
                                SizedBox(width: 12.0.sp),
                                Positioned(
                                  right: 0,
                                  child: Container(
                                    height: 1.0.sp,
                                    width:
                                        62.0.sp, // Adjust the width of the line
                                    color: gray,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 32.0.sp),
                            // ElevatedButton(
                            //   onPressed: () {
                            //     // Add your logic for Continue with Google button
                            //   },
                            //   style: ElevatedButton.styleFrom(
                            //     primary: whiteColor,
                            //     shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(24.0.sp),
                            //       side: BorderSide(
                            //           color: blackColor, width: 1.0.sp),
                            //     ),
                            //     minimumSize: Size(327.0.sp, 56.0.sp),
                            //   ),
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.center,
                            //     children: [
                            //       ImageAssets.svgAssets(Svg.icGoogle,
                            //           width: 24.sp, height: 24.sp),
                            //       SizedBox(width: 12.0.sp),
                            //       Text(
                            //         'Continue with Google',
                            //         style: text16.semiBold.black,
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            ContinueButton(
                              text: 'Continue with Google',
                              iconAsset: Svg.icGoogle,
                              onPressed: () {
                                // Add your logic for Continue with Google button
                              },
                            ),
                            SizedBox(height: 16.0.sp),
                            ContinueButton(
                              text: 'Continue with Apple',
                              iconAsset: Svg.icApple,
                              onPressed: () {
                                // Add your logic for Continue with Google button
                              },
                            ),
                            SizedBox(
                              height: 66.sp,
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Already have an account?',
                                style: text16.medium.copyWith(color: grayscale70),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' Login',
                                      style: text16.medium
                                          .copyWith(color: primaryColor)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]))));
  }
}
