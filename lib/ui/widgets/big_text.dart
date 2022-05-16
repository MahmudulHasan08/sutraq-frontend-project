import 'package:flutter/material.dart';
import 'package:sutraq/const/appcolors.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  double? size;
  BigText(
      {required this.text,
      this.size = 30,
      this.color = AppColors.bigtextColor,
      this.textAlign});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          fontSize: size,
          color: color,
          fontFamily: "Gelion",
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
