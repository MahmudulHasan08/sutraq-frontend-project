import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';

class ReuseAccountCard extends StatelessWidget {
  final Color color;
  final String text;
  final String text2;
  final Widget img;
  ReuseAccountCard(
      {required this.text,
      required this.text2,
      required this.color,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 89.h,
      width: 196.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 8),
            blurRadius: 10.r,
            spreadRadius: 0,
          )
        ],
        color: color,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 12.h,
                        width: 14.w,
                        child: img,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text(
                          text,
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontFamily: "DMSans",
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF0A004A),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 5),
                  height: 11.h,
                  width: 12.w,
                  child: color == Colors.white
                      ? Icon(
                          Icons.visibility_outlined,
                          color: Color(0xFF0A004A),
                        )
                      : Container(),
                ),
              ],
            ),
            SizedBox(
              height: 7.h,
            ),
            Container(
              child: Text(
                "AVAILABLE BALANCE",
                style: TextStyle(
                  fontSize: 7.sp,
                  color: color == AppColors.backgroundSettingsColor
                      ? AppColors.whiteColor
                      : Color(0xFF0A004A).withOpacity(0.4),
                ),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    text2,
                    style: TextStyle(
                      fontFamily: "Gelion",
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.mainColor,
                    ),
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    color: AppColors.mainColor,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
