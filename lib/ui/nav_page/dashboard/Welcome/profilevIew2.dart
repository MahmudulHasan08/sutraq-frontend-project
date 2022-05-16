import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/widgets/big_text.dart';

class ProfileVIew2 extends StatefulWidget {
  const ProfileVIew2({Key? key}) : super(key: key);

  @override
  State<ProfileVIew2> createState() => _ProfileVIew2State();
}

class _ProfileVIew2State extends State<ProfileVIew2> {
  int? currentIndex;
  List flagimg = [
    "assets/images/splashimg.png",
    "assets/images/usa.png",
    "assets/images/card3.png"
  ];
  List text1 = ["SUTRAQ CURRENCY", "USD", "NGN"];
  List text2 = ["Q0", "\$0", "Q0"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundDashboardColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 30.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(0xFF3417A8),
                          Color(0xFF4E17A8),
                        ]),
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: Center(
                          child: Text(
                        "OP",
                        style: TextStyle(color: AppColors.whiteColor),
                      )),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: "Welcome!",
                          color: AppColors.whiteColor,
                          size: 16.sp,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 13),
                height: 16.h,
                width: 16.w,
                child: Icon(
                  Icons.notifications,
                  color: AppColors.smalltextColor,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          //slider
          Container(
              height: 89.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (_, currentIndex) {
                    return Container(
                      margin: EdgeInsets.only(left: 10),
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
                        color: currentIndex == 2
                            ? AppColors.backgroundideaColor
                            : AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 5),
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
                                        child: Image.asset(
                                            "assets/images/splashimg.png"),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        child: Text(
                                          text1[currentIndex],
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            fontFamily: "DMSans",
                                            fontWeight: FontWeight.w700,
                                            color: currentIndex == 2
                                                ? AppColors.whiteColor
                                                : Color(0xFF0A004A),
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
                                  child: AppColors.whiteColor == Colors.white
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
                                  color: currentIndex == 2
                                      ? AppColors.dashboardPageViewColor
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
                                    text2[currentIndex],
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
                  })),
          SizedBox(
            height: 10,
          ),
          // DotsIndecator
          Align(
            alignment: Alignment.center,
            child: DotsIndicator(
              dotsCount: 3,
              position: 1,
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
