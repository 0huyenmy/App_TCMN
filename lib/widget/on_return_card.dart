import 'package:journal_linker/assets/index.dart';
import 'package:flutter/material.dart';

class OnReturnCard extends StatelessWidget {
  const OnReturnCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 4.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          width: 1,
          color: Color(0xffFF4747),
        ),
      ),
      child: Text(
        'Khứ hồi',
        style: text10.bold.copyWith(color: Color(0xffFF4747)),
      ),
    );
  }
}
