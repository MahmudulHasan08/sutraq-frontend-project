import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/nav_page/settings/setting_bankaccount/refarfriend.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/reusecontainer.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

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
            ],
          ),
        ),
        title: BigText(
          text: "Change Password",
          size: 20.sp,
          color: AppColors.backgroundSettingsColor,
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Container(
              padding: EdgeInsets.all(35.w),
              height: 600.h,
              width: 375.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallText(
                    text: "Current Password",
                    size: 14.sp,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ReuseContainerPassWordTextFeild(),
                  SizedBox(
                    height: 20.h,
                  ),
                  SmallText(text: "New Password"),
                  SizedBox(
                    height: 10.h,
                  ),
                  ReuseContainerPassWordTextFeild(),
                  SizedBox(
                    height: 20.h,
                  ),
                  SmallText(text: "Confirm New Password"),
                  SizedBox(
                    height: 10.h,
                  ),
                  ReuseContainerPassWordTextFeild(),
                  SizedBox(
                    height: 50.h,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => ReferFriend());
                      },
                      child: ReuseableButton(text: "Change Password")),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
