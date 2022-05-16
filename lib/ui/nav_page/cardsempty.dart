import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/nav_page/settings/settingscoopy.dart';
import 'package:sutraq/ui/widgets/Alphaloancard.dart';
import 'package:sutraq/ui/widgets/accesbancard.dart';
import 'package:sutraq/ui/widgets/appbar_text.dart';

import 'dashboard/viewall.dart';

class CardsEmpty extends StatefulWidget {
  const CardsEmpty({Key? key}) : super(key: key);

  @override
  State<CardsEmpty> createState() => _CardsEmptyState();
}

class _CardsEmptyState extends State<CardsEmpty> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundWalletColor,
        appBar: AppBar(
          elevation: 0.0,
          bottomOpacity: 0.0,
          title: appBarText("My Cards"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 10.w, top: 10.h, right: 10.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 150.h,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 15.w),
                          child: Container(
                            height: 150.h,
                            width: 270.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/card4.png"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Stack(
                  children: [
                    Positioned(
                      child: Container(
                        padding:
                            EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                        height: 475.h,
                        width: double.maxFinite.w,
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5, top: 25),
                              child: Text(
                                "Recent Transactions",
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Gelion",
                                  color: Color(0xFF333333),
                                ),
                              ),
                            ),
                            ReuseAcccessCard(trillingText: "\$2400"),
                            // ReuseAlphaCard(trillingText: "N10,000"),
                            // ReuseAcccessCard(trillingText: "N4,500,000"),
                            // ReuseAlphaCard(trillingText: "N10,000"),
                            // ReuseAcccessCard(trillingText: "N2,000"),
                            SizedBox(
                              height: 10.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 20.h,
                        right: 20.w,
                        child: FloatingActionButton(
                          backgroundColor: AppColors.floatingbutttonColor,
                          onPressed: () {
                            Get.to(() => SettingsCopy());
                          },
                          child: Icon(Icons.add),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
