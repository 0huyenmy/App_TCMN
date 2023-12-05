import 'package:flutter/material.dart';
import 'package:journal_linker/assets/index.dart';

class BottomTitleOnboarding extends StatefulWidget {
  final String title;
  final Function? action;

  const BottomTitleOnboarding({super.key, required this.title, this.action});

  @override
  State<BottomTitleOnboarding> createState() => _BottomTitleOnboardingState();
}

class _BottomTitleOnboardingState extends State<BottomTitleOnboarding> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: width * 0.7,
          child: Text(
            widget.title,
            textAlign: TextAlign.center,
            style: text24.bold
                .copyWith(color: const Color.fromARGB(255, 24, 24, 24)),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 15.sp),
            width: width * 0.7,
            child: Text(
                "Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem .",
                textAlign: TextAlign.center,
                style: text14.medium.copyWith(
                  color: Color.fromARGB(255, 138, 138, 138),
                ))),
        InkWell(
          onTap: widget.action as void Function()?,
          child: Container(
            margin: EdgeInsets.only(
                top: 30.sp, bottom: 20.sp, left: 15.sp, right: 15.sp),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 42,
                  width: 42,
                  margin: EdgeInsets.only(right: 10.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: primaryColor,
                  ),
                  child: Icon(
                    Icons.navigate_next_outlined,
                    color: whiteColor,
                    size: 26,
                  ),
                ),
                SizedBox(width: 5.sp),
                Expanded(
                    child: Text("Skip",
                        style: text14.regular.copyWith(color: kcNickel))),
              ],
            ),
          ),
        )
      ],
    );
  }
}
