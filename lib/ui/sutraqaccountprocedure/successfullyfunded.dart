import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/nav_page/mainpage.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class SuccesfullyFunded extends StatefulWidget {
  const SuccesfullyFunded({Key? key}) : super(key: key);

  @override
  State<SuccesfullyFunded> createState() => _SuccesfullyFundedState();
}

class _SuccesfullyFundedState extends State<SuccesfullyFunded> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundSettingsColor,
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.all(20.w),
              margin: EdgeInsets.only(top: 30.h),
              height: 650.h,
              width: 325.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: AppColors.whiteColor,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(top: 15.h),
                      height: 86.h,
                      width: 86.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.r),
                          color: AppColors.mainColor.withOpacity(0.15),
                          image: DecorationImage(
                            image: AssetImage("assets/images/Icon.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  BigText(
                    text: "Success",
                    color: AppColors.backgroundSettingsColor,
                    size: 24.sp,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 20.w, right: 20.w),
                      child: SmallText(
                          text: "You’ve successfully funded your account.")),
                  SizedBox(
                    height: 15.h,
                  ),
                  Card(
                    elevation: 0.5,
                    child: ListTile(
                      title: BigText(
                        text: "From:",
                        size: 13.sp,
                        color: Color(0xFF002251),
                      ),
                      subtitle: Align(
                        alignment: Alignment.bottomLeft,
                        child: SmallText(
                          text: "Credit Card",
                          size: 12.sp,
                          color: Color(0xFF7A869A),
                        ),
                      ),
                      trailing: Column(
                        children: [
                          BigText(
                            text: "Precious Ogar",
                            size: 13.sp,
                            color: Color(0xFF002251),
                          ),
                          SizedBox(height: 10.h),
                          SmallText(
                            text: "VISA *8064",
                            size: 12.sp,
                            color: Color(0xFF7A869A),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 0.5,
                    child: ListTile(
                      title: BigText(
                        text: "To:",
                        size: 13.sp,
                        color: Color(0xFF002251),
                      ),
                      trailing: BigText(
                        text: "Sutraq NGN Account",
                        size: 13.sp,
                        color: Color(0xFF002251),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 0.5,
                    child: ListTile(
                      title: BigText(
                        text: "Date:",
                        size: 13.sp,
                        color: Color(0xFF002251),
                      ),
                      trailing: Column(
                        children: [
                          BigText(
                            text: "26 Apr, 2019",
                            size: 13.sp,
                            color: Color(0xFF002251),
                          ),
                          SizedBox(height: 10.h),
                          SmallText(
                            text: "12:48 PM",
                            size: 12.sp,
                            color: Color(0xFF7A869A),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 0.5,
                    child: ListTile(
                      title: BigText(
                        text: "Total:",
                        size: 13.sp,
                        color: Color(0xFF002251),
                      ),
                      trailing: BigText(
                        text: "\$4,800",
                        size: 13.sp,
                        color: Color(0xFF002251),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  InkWell(
                      onTap: () {
                        Get.snackbar(
                            "Done", "You’ve successfully funded your account.",
                            backgroundColor: AppColors.mainColor,
                            colorText: AppColors.whiteColor);
                        Get.to(() => MainPage());
                      },
                      child: ReuseableButton(text: "CONTINUE")),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
