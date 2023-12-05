import 'package:flutter/material.dart';
import 'package:journal_linker/widget/touchable_opacity.dart';

import '../../assets/index.dart';

class AppBarGoBack extends StatelessWidget {
  final String title;
  const AppBarGoBack({super.key, this.title = 'Title'});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TouchableOpacity(
          onTap: () {
            Navigator.pop(context);
          },
          child: ImageAssets.svgAssets(
            'Svg.icBack',
            width: 24.sp,
          ),
        ),
        Text(
          '${title}',
          style: text18.bold.black,
        ),
        SizedBox(
          width: 24.sp,
        ),
      ],
    );
  }
}
