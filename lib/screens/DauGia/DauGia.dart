import 'package:flutter/material.dart';
import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/widget/dismiss_keyboard_widget.dart';

class DauGiaPage extends StatefulWidget {
  const DauGiaPage({Key? key}) : super(key: key);

  @override
  State<DauGiaPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DauGiaPage> {
  @override
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
