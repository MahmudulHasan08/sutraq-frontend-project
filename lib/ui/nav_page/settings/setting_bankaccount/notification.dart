import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/nav_page/dashboard/Welcome/emptydashboard.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

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
                onTap: () => Get.to(() => EmptyDashBoard()),
                child: Container(
                  // margin: EdgeInsets.only(right: 45),
                  height: 33.h,
                  width: 33.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: AppColors.mainColor,
                  ),
                  child: Icon(
                    Icons.close_outlined,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        title: BigText(
          text: "Notifications",
          size: 20.sp,
          color: AppColors.backgroundSettingsColor,
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Expanded(
            flex: 9,
            child: Container(
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.whiteColor,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 8.h,
                            width: 8.h,
                            decoration: BoxDecoration(
                                color: AppColors.mainColor,
                                borderRadius: BorderRadius.circular(30.r)),
                          ),
                          SizedBox(
                            width: 10.h,
                          ),
                          Text(
                            "Got a minute to help us out?",
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Color(0xFF4D4949),
                                fontFamily: "DMSans"),
                          ),
                        ],
                      ),
                      SmallText(
                        text: "9:40am",
                        size: 14.sp,
                        color: AppColors.mainColor.withOpacity(0.6),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "We’d like to know how you heard about Sutraq. It’s so we can better share our mission with the world. Tap to take the survey.",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xFF4D4949),
                        fontFamily: "DMSans"),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SmallText(text: "Got a minute to help us out?"),
                        ],
                      ),
                      SmallText(
                        text: "Yesterday",
                        size: 14.sp,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SmallText(
                    text:
                        "We’d like to know how you heard about Sutraq. It’s so we can better share our mission with the world. Tap to take the survey.",
                    size: 14.sp,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
