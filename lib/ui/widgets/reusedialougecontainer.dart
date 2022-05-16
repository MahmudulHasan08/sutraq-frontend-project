import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';

import 'big_text.dart';

class ReuseDialougeBlueCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      height: 80.h,
      width: 88.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 17.r,
            offset: Offset(0, 0),
            spreadRadius: 0,
            color: Color(0xFF000000).withOpacity(0.1),
          )
        ],
        borderRadius: BorderRadius.circular(13.r),
        color: Color(0xFF08083D),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 10.h,
                width: 13.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/card3.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "NGN",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFF2F2F2),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: BigText(
              text: "N12,000",
              size: 16.sp,
              color: AppColors.whiteColor,
            ),
          )
        ],
      ),
    );
  }
}

class ReuseDialougeWhiteCard extends StatelessWidget {
  final ImageProvider<Object> img;
  ReuseDialougeWhiteCard({required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      height: 80.h,
      width: 88.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 17.r,
            offset: Offset(0, 0),
            spreadRadius: 0,
            color: Color(0xFF000000).withOpacity(0.1),
          )
        ],
        borderRadius: BorderRadius.circular(13.r),
        color: AppColors.whiteColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 10.h,
                width: 13.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "GBP",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.walletPageViewColor,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: BigText(
              text: "\$500",
              size: 16.sp,
              color: AppColors.walletPageViewColor,
            ),
          )
        ],
      ),
    );
  }
}
