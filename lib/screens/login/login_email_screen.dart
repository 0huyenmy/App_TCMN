import 'package:animation_wrappers/animations/faded_slide_animation.dart';
import 'package:flutter/material.dart';
import 'package:journal_linker/assets/colors.dart';
import 'package:journal_linker/assets/colors.dart';
import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/screens/register/create_account_email.dart';
import 'package:journal_linker/screens/splash/appbar.dart';
import 'package:journal_linker/widget/button/button_login.dart';
import 'package:journal_linker/widget/button/disable_button.dart';

import '../../assets/colors.dart';
import '../../assets/colors.dart';
import '../../assets/colors.dart';
import '../../assets/index.dart';
import '../../assets/style.dart';
import '../../widget/appbar/appbar_action.dart';
import '../../widget/button/button_primary.dart';
import '../../widget/dismiss_keyboard_widget.dart';
import '../../widget/input/app_input.dart';
import '../../widget/touchable_opacity.dart';

class LoginEmailScreen extends StatefulWidget {
  const LoginEmailScreen({super.key});

  @override
  State<LoginEmailScreen> createState() => _LoginEmailScreenEState();
}

const Set<MaterialState> interactiveStates = <MaterialState>{
  MaterialState.pressed,
  MaterialState.hovered,
  MaterialState.focused,
};
String _selected = 'False';
bool isCheck = false;
bool _isPasswordVisible = false;
bool isPasswordVisible = true;

final _passwordController = TextEditingController();

class _LoginEmailScreenEState extends State<LoginEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DismissKeyboard(
        child: Scaffold(
          backgroundColor: whiteColor,
          body: FadedSlideAnimation(
            beginOffset: const Offset(0, 0.05),
            endOffset: const Offset(0, 0),
            slideCurve: Curves.linearToEaseOut,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 18, 0, 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: AppBarAction(
                        title: 'Sign In',
                        icLeft: Svg.icArrowBack,
                        sizeLeft: 48.sp,
                        actionLeft: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 24.sp, vertical: 14.sp),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Email Address',
                                    style: text14.medium
                                        .copyWith(color: Color(0xff78828A))),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 8.sp, bottom: 16.sp),
                                  child: AppInput(
                                    hintText: 'Enter your email address',
                                    valueStyle: text16.medium,
                                  ),
                                ),
                                Text('Password',
                                    style: text14.medium
                                        .copyWith(color: Color(0xff78828A))),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 8.sp, bottom: 16.sp),
                                    child: TextField(
                                      obscureText: !_isPasswordVisible,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: inputColor,
                                        hintText: 'Enter your password',
                                        hintStyle: text16.medium
                                            .copyWith(color: grayscale70),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(24.sp),
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            _isPasswordVisible
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _isPasswordVisible =
                                                  !_isPasswordVisible;
                                            });
                                          },
                                        ),
                                      ),
                                    )),

                                //   Padding(
                                //     padding:
                                //         EdgeInsets.only(top: 8.sp, bottom: 16.sp),
                                //     child: AppInput(
                                //       controller: _passwordController,
                                //       hintText: 'Enter your password',
                                //       valueStyle: text16.medium,
                                //       obscureText: _isPasswordVisible,
                                //       downIcon: GestureDetector(
                                //         onTap: () {
                                //            setState(() {
                                //             if(_isPasswordVisible){
                                //                _isPasswordVisible = false;
                                //             }else{
                                //                _isPasswordVisible = true;
                                //             }
                                //         });
                                // },
                                //         // child: ImageAssets.svgAssets(
                                //         //   _isPasswordVisible==true
                                //         //       ? Svg.icUnHide
                                //         //       : Svg
                                //         //           .icHide,
                                //         //   width: 24.0,
                                //         //   height: 24.0,
                                //         //   color: Colors.grey,
                                //         // ),
                                //       ),
                                //     ),
                                //   ),
                                Row(
                                  children: [
                                    Transform.scale(
                                        scaleX: 1.3,
                                        scaleY: 1.3,
                                        child: Checkbox(
                                          checkColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50.sp),
                                          ),
                                          side: BorderSide(
                                            width: 1.sp,
                                            color: Colors.grey,
                                          ),
                                          fillColor:
                                              MaterialStateProperty.resolveWith(
                                                  (states) {
                                            if (!states.any(
                                                interactiveStates.contains)) {
                                              return Colors.grey;
                                            }
                                            return null;
                                          }),
                                          value: isCheck,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isCheck = value!;
                                            });
                                          },
                                        )),
                                    SizedBox(width: 8.sp),
                                    Text('Remember Me',
                                        style: text14.semiBold.grey),
                                    SizedBox(width: 80.sp),
                                    Text('Forgot Password',
                                        style: text14.semiBold.copyWith(
                                            color: Color(0xffE53935))),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 6.sp, vertical: 32.sp),
                                  child: ButtonPrimary(
                                    onPress: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) =>
                                            Home(),
                                      ));
                                    },
                                    text: 'Sign In',
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
                                ButtonLogin(
                                  text: 'Continue with Google',
                                  iconAsset: Svg.icGoogle,
                                  onPressed: () {},
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 16.sp, bottom: 66.sp),
                                  child: ButtonLogin(
                                    text: 'Continue with Apple',
                                    iconAsset: Svg.icApple,
                                    onPressed: () {},
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
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  RegisterScreenEmail()), // Replace SignUpPage() with the actual signup page widget
                                        );
                                      },
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
