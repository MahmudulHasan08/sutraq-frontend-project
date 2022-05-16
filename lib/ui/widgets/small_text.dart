import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final TextAlign? textAlign;
  SmallText(
      {required this.text,
      this.color = AppColors.smalltextColor,
      this.size = 16,
      this.textAlign = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          fontSize: size,
          color: color,
        ),
      ),
    );
  }
}
