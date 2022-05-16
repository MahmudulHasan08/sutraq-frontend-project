import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/nav_page/settings/setting_bankaccount/creditanddebitcards.dart';

import 'package:sutraq/ui/widgets/appbar.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/cards.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class SettingsBankAccount extends StatelessWidget {
  const SettingsBankAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          child: Row(
            children: [
              InkWell(
                onTap: () => Get.back(),
                child: Container(
                  // margin: EdgeInsets.only(right: 45),
                  height: 33,
                  width: 33,
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
            ],
          ),
        ),
        title: BigText(
          text: "Bank Transfer",
          size: 20.sp,
          color: AppColors.backgroundSettingsColor,
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.w),
              margin: EdgeInsets.only(top: 60.h),
              height: 540.h,
              width: 339.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.whiteColor,
              ),
              child: Column(
                children: [
                  SmallText(
                    text: "Check the radio button to set bank as default",
                    textAlign: TextAlign.start,
                  ),
                  ReuseableCard(
                    value: 1,
                  ),
                  ReuseableCard(
                    value: 2,
                  ),
                  ReuseableCard(
                    value: 3,
                  ),
                  ReuseableCard(
                    value: 4,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  InkWell(
                      onTap: () => Get.to(() => CreditAndDebitCards()),
                      child: ReuseableButton(text: "ADD NEW")),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
