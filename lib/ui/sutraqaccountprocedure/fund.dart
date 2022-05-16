import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/sutraqaccountprocedure/depositfund.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class Fund extends StatelessWidget {
  const Fund({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          leading: Container(
            margin: EdgeInsets.only(
              left: 10,
              top: 10,
            ),
            child: InkWell(
              onTap: () => Get.back(),
              child: Container(
                // margin: EdgeInsets.only(right: 45),
                height: 33.h,
                width: 33.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: AppColors.mainColor,
                ),
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 77.w, right: 75.w, top: 220.h),
              child: BigText(text: "Good Jobs!"),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 5.w),
              child: SmallText(
                text: "Let’s try funding this account",
                size: 12.sp,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 39.w, right: 34.w),
              child: InkWell(
                  onTap: () => Get.to(() => DepositeFund()),
                  child: ReuseableButton(text: "On click")),
            )
          ],
        ),
      ),
    );
  }
}
