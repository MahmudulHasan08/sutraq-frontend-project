import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/nav_page/settings/setting_bankaccount/notification.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class ReferFriend extends StatelessWidget {
  const ReferFriend({Key? key}) : super(key: key);

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
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 7.w),
              padding: EdgeInsets.all(40.w),
              height: 568.h,
              width: 325.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: AppColors.whiteColor,
              ),
              child: Column(
                children: [
                  Container(
                    width: 194.w,
                    height: 210.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/images/Artwork.png"),
                      fit: BoxFit.cover,
                    )),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SmallText(
                    text:
                        "Earn cash reward when your friends signup and use your referral link or code",
                    size: 12.sp,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () => Get.to(() => NotificationPage()),
                      child: Container(
                        padding: EdgeInsets.all(20.w),
                        height: 74.h,
                        width: 227.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFF2F8FF).withOpacity(1),
                              Color(0xFFD7E9FF).withOpacity(0),
                            ],
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BigText(
                              text: "SU12344",
                              size: 21.sp,
                              color: Color(0xFF0A004A),
                            ),
                            Icon(
                              Icons.copy_outlined,
                              size: 35,
                              color: AppColors.tablabelColor,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SmallText(
                            text: "Accepted",
                            size: 12.sp,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          BigText(
                            text: "N200",
                            size: 21.sp,
                            color: AppColors.bigTextdeepblueColor,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SmallText(
                            text: "Amount Earned",
                            size: 12.sp,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          BigText(
                            text: "N200",
                            size: 21.sp,
                            color: AppColors.bigTextdeepblueColor,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
