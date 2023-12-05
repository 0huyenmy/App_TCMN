import 'package:flutter/material.dart';
import 'package:journal_linker/assets/colors.dart';
import 'package:journal_linker/assets/index.dart';

class ButtonLogin extends StatefulWidget {
  final String text;
  final String iconAsset;
  final VoidCallback onPressed;

  ButtonLogin({
    required this.text,
    required this.iconAsset,
    required this.onPressed,
  });

  @override
  _ButtonLoginState createState() => _ButtonLoginState();
}

class _ButtonLoginState extends State<ButtonLogin> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _isPressed = !_isPressed;
        });
        widget.onPressed();
      },
      style: ElevatedButton.styleFrom(
        primary: _isPressed ? Colors.grey : whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0.sp),
          side: BorderSide(color: blackColor, width: 1.0.sp),
        ),
        minimumSize: Size(327.0.sp, 56.0.sp),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageAssets.svgAssets(
            widget.iconAsset,
            width: 24.sp,
            height: 24.sp,
          ),
          SizedBox(width: 12.0.sp),
          Text(
            widget.text,
            style: text16.semiBold.black,
          ),
        ],
      ),
    );
  }
}