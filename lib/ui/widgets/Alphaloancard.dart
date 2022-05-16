import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';

class ReuseAlphaCard extends StatelessWidget {
  final String trillingText;
  const ReuseAlphaCard({Key? key, required this.trillingText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          height: 35.h,
          width: 35.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.iconColor2,
          ),
          child: Center(
            child: Icon(
              Icons.call_made_sharp,
              color: Colors.redAccent,
              size: 24,
            ),
          ),
        ),
        title: Text(
          "Alpha Loans",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.cardTextColor1,
          ),
        ),
        subtitle: Text(
          "28, Jan 2020",
          style: TextStyle(
            fontSize: 10.sp,
            color: AppColors.cardTextColor2.withOpacity(0.7),
          ),
        ),
        trailing: Text(
          trillingText,
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.cardTextColor1,
              fontFamily: "Gelion"),
        ),
      ),
    );
  }
}
