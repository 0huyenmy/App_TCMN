import 'package:flutter/material.dart';
import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/widget/dismiss_keyboard_widget.dart';

class GioHangPage extends StatefulWidget {
  const GioHangPage({Key? key}) : super(key: key);

  @override
  State<GioHangPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<GioHangPage> {
   Widget build(BuildContext context) {
    return DismissKeyboard(
        child: Scaffold(
            body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.sp),
        child: Column(children: [
          Container(),
        ]),
      ),
    )));
  }
}
