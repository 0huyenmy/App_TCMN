import 'package:flutter/material.dart';
import 'package:journal_linker/widget/touchable_opacity.dart';

import '../../assets/index.dart';

class ButtonDisable extends StatefulWidget {
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

  ButtonDisable(
      {required this.onPress,
      this.disabled = false,
      this.text = 'Tiếp tục',
      this.textSize = 11,
      this.paddingHorizontal = 12.0,
      this.paddingVertical = 0.0,
      this.color,
      this.colorText = dLabelColor,
      this.fontWeight = FontWeight.bold,
      this.borderRadius = 16.0,
      this.borderWidth = 0,
      this.borderWidthColor = dLabelColor});

  @override
  _ButtonDisableState createState() => _ButtonDisableState();
}

class _ButtonDisableState extends State<ButtonDisable> {
  Color? renderButtonColor() {
    if (widget.disabled) return Color(0xff828282);
    if (widget.color != null) return widget.color;
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
        widget.onPress();
      },
      child: Container(
        width: double.infinity,
        height: 56.sp,
        padding: EdgeInsets.symmetric(
            vertical: widget.paddingVertical.sp,
            horizontal: widget.paddingHorizontal.sp),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: widget.borderWidthColor),
          borderRadius: new BorderRadius.circular(widget.borderRadius),
        ),
        alignment: Alignment.center,
        child: Text(
          widget.text,
          style: TextStyle(
              fontSize: widget.textSize.sp,
              color: widget.colorText,
              fontWeight: widget.fontWeight),
        ),
      ),
    );
  }
}
