import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class ReuseableCard extends StatelessWidget {
  final double? value;
  const ReuseableCard({Key? key, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: double.maxFinite,
      decoration: BoxDecoration(color: AppColors.whiteColor, boxShadow: [
        BoxShadow(
          offset: Offset(0, 1),
          blurRadius: 0,
          color: AppColors.smalltextColor.withOpacity(0.4),
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.account_balance_outlined,
                size: 30,
                color: AppColors.mainColor,
              ),
              SizedBox(
                width: 5.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10.h),
                    child: BigText(
                      text: "9381053802",
                      size: 14.sp,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  BigText(
                    text: "(Access Bank - Precious Ogar)",
                    color: AppColors.greyColor,
                    size: 14.sp,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  //Remove button

                  SmallText(
                    text: "Remove",
                    color: Color(0xFFEC615B),
                    size: 10.sp,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    height: 1.h,
                    width: 36.w,
                    color: Color(0xFFEC615B),
                  ),
                ],
              ),
            ],
          ),
          Radio(
              activeColor: AppColors.mainColor,
              value: value,
              groupValue: 1,
              onChanged: (_) {}),
        ],
      ),
    );
  }
}
