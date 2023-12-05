import 'package:flutter/material.dart';
import 'package:journal_linker/utils/string.dart';
import 'package:journal_linker/widget/touchable_opacity.dart';

import '../../assets/index.dart';

class AppBarAction extends StatelessWidget {
  final Function? actionLeft;
  final Function? actionRight;
  final String? icLeft;
  final String? icRight;
  final String title;
  final double? sizeLeft;
  final double? sizeRight;

  AppBarAction({
    super.key,
    this.actionLeft,
    this.actionRight,
    required this.title,
    this.icLeft,
    this.icRight,
    this.sizeLeft = 20,
    this.sizeRight = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.sp, horizontal: 18.sp),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: kcBottom,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icLeft.isNullOrEmpty
              ? SizedBox(
                  width: 24.sp,
                )
              : TouchableOpacity(
                  onTap: actionLeft,
                  child: ImageAssets.svgAssets(
                    icLeft ?? '',
                    width: sizeLeft ?? 20,
                    fit: BoxFit.cover,
                  ),
                ),
          Text(
            title,
            style: text22.black.bold,
          ),
          icRight.isNullOrEmpty
              ? SizedBox(
                  width: 24.sp,
                )
              : TouchableOpacity(
                  onTap: actionRight,
                  child: ImageAssets.svgAssets(
                    icRight ?? '',
                    width: sizeRight ?? 20,
                    fit: BoxFit.cover,
                  ),
                ),
        ],
      ),
    );
  }
}
