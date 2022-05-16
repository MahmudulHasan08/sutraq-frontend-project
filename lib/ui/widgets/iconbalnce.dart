import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';

class IconBlance extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color? containercolor;
  IconBlance(
      {required this.icon,
      required this.color,
      this.containercolor = AppColors.IconBlanceColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: 56.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: containercolor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 10,
              spreadRadius: 0,
              color: color,
            ),
          ]),
      child: Icon(
        icon,
        color: AppColors.whiteColor,
      ),
    );
  }
}
