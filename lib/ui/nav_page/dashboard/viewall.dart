import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/widgets/Alphaloancard.dart';
import 'package:sutraq/ui/widgets/accesbancard.dart';
import 'package:sutraq/ui/widgets/backbutton.dart';
import 'package:get/get.dart';

class ViewAll extends StatefulWidget {
  const ViewAll({Key? key}) : super(key: key);

  @override
  State<ViewAll> createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundTransectionColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Row(
                children: [
                  InkWell(
                    onTap: () => Get.back(),
                    child: Container(
                      margin: EdgeInsets.only(right: 45),
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
                  Text(
                    "Transaction History",
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Gelion"),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 68.w, right: 68.w, top: 20.h),
              height: 46.h,
              width: 237.w,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: AppColors.greenColor,
                  )),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Naira Account: N190,000",
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    child: Icon(
                      Icons.expand_more_outlined,
                      color: AppColors.greenColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              child: TabBar(
                  labelColor: AppColors.tablabelColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelColor: AppColors.greyColor,
                  physics: NeverScrollableScrollPhysics(),
                  labelStyle: TextStyle(fontSize: 12.sp),
                  controller: _tabController,
                  tabs: [
                    Tab(text: "All Transactions"),
                    Tab(text: "Debits"),
                    Tab(text: "Credits"),
                  ]),
            ),
            Container(
              height: 500,
              width: double.maxFinite,
              child: TabBarView(controller: _tabController, children: [
                ListView(
                  children: [
                    ReuseAcccessCard(trillingText: "N240,000"),
                    ReuseAcccessCard(trillingText: "N240,000"),
                    ReuseAlphaCard(trillingText: "N240,000"),
                    ReuseAlphaCard(trillingText: "N240,000"),
                    ReuseAcccessCard(trillingText: "N240,000"),
                    ReuseAcccessCard(trillingText: "N240,000"),
                    ReuseAlphaCard(trillingText: "N240,000"),
                    ReuseAlphaCard(trillingText: "N240,000"),
                  ],
                ),
                Text("ok"),
                Text("ok"),
              ]),
            )
          ],
        ),
      ),
    ));
  }
}
