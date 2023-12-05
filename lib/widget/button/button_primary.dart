import 'package:flutter/material.dart';
import 'package:journal_linker/widget/touchable_opacity.dart';

import '../../assets/index.dart';

class ButtonPrimary extends StatefulWidget {
  Function onPress;
  bool disabled;
  String text;
  double textSize;
  double paddingHorizontal;
  double paddingVertical;
  Color? color;
  Color colorText;
  double borderRadius;
  FontWeight fontWeight;
  double borderWidth;
  Color borderWidthColor;
  double? height;
  double? width;

  ButtonPrimary(
      {required this.onPress,
      this.disabled = false,
      this.text = 'Tiếp tục',
      this.textSize = 16,
      this.paddingHorizontal = 12.0,
      this.paddingVertical = 0.0,
      this.color,
      this.colorText = Colors.white,
      this.fontWeight = FontWeight.bold,
      this.borderRadius = 8.0,
      this.borderWidth = 0,
      this.height = 56,
      this.width = double.infinity,
      this.borderWidthColor = Colors.transparent});

  @override
  _ButtonPrimaryState createState() => _ButtonPrimaryState();
}

class _ButtonPrimaryState extends State<ButtonPrimary> {
  Color? renderButtonColor() {
    if (widget.disabled) return Color(0xff828282);
    if (widget.color != null) return backgroundColor;
    return null;
  }

  late double textSize;
  @override
  void initState() {
    textSize = widget.textSize.sp;
  }

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      onTap: () {
        if (!widget.disabled) {
          widget.onPress();
        }
      },
      child: Container(
        width: widget.width,
        height: widget.height?.sp,
        padding: EdgeInsets.symmetric(
            vertical: widget.paddingVertical.sp,
            horizontal: widget.paddingHorizontal.sp),
        decoration: BoxDecoration(
            border: Border.all(
                width: widget.borderWidth, color: widget.borderWidthColor),
            borderRadius: new BorderRadius.circular(widget.borderRadius),
            color: !widget.disabled ? primaryColor : Color(0xffD2D2D2)),
        alignment: Alignment.center,
        child: Text(
          widget.text,
          style: TextStyle(
              fontSize: widget.textSize.sp,
              color: !widget.disabled ? widget.colorText : Color(0xff9D8F8F),
              fontWeight: widget.fontWeight),
        ),
      ),
    );
  }
}
