import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';

class ReuseableButton extends StatelessWidget {
  final String text;
  final Color? color;
  ReuseableButton({required this.text, this.color = AppColors.mainColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: AppColors.whiteColor,
              fontFamily: "Circular Std Font"),
        ),
      ),
    );
  }
}

class ReuseableButton2 extends StatelessWidget {
  final String text;
  final Color? color;
  ReuseableButton2({required this.text, this.color = AppColors.mainColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61.h,
      width: 320.w,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: AppColors.whiteColor,
              fontFamily: "Circular Std Font"),
        ),
      ),
    );
  }
}
