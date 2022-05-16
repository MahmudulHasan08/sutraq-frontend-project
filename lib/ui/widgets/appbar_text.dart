import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';

Widget appBarText(text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 20.sp,
      color: AppColors.blackColor,
      fontFamily: "Gelion",
      fontWeight: FontWeight.w700,
    ),
  );
}
