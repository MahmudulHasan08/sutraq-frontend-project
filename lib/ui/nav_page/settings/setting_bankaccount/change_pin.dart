import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/nav_page/settings/setting_bankaccount/changepassword.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/reusecontainer.dart';
import 'package:sutraq/ui/widgets/small_text.dart';
import 'package:sutraq/ui/widgets/text_field.dart';

class ChangePin extends StatelessWidget {
  const ChangePin({Key? key}) : super(key: key);

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
          text: "Change Pin",
          size: 20.sp,
          color: AppColors.backgroundSettingsColor,
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 50.w, right: 50.w),
              child: Align(
                alignment: Alignment.center,
                child: SmallText(
                  text:
                      "Your pin is your personal authentication pin for performing trasanctions within sutraq",
                  size: 12.sp,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(35.w),
              margin: EdgeInsets.only(top: 40.h),
              height: 590.h,
              width: 393.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallText(
                    text: "Current Pin",
                    size: 14.sp,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 57.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.r),
                        border: Border.all(
                          color: AppColors.greyColor.withOpacity(.5),
                          width: 1.w,
                        )),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15.w,
                        ),
                        ReusePinTextFleld(),
                        SizedBox(
                          width: 20.w,
                        ),
                        ReusePinTextFleld(),
                        SizedBox(
                          width: 20.w,
                        ),
                        ReusePinTextFleld(),
                        SizedBox(
                          width: 20.w,
                        ),
                        ReusePinTextFleld(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SmallText(
                    text: "New Pin",
                    size: 14.sp,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ReuseContainerTextField(),
                  SizedBox(
                    height: 20.h,
                  ),
                  SmallText(
                    text: "Confirm New Pin",
                    size: 14.sp,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ReuseContainerTextField(),
                  SizedBox(
                    height: 60.h,
                  ),
                  InkWell(
                      onTap: () => Get.to(() => ChangePassword()),
                      child: ReuseableButton(text: "Change Pin")),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
