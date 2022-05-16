import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/nav_page/dashboard/sendmoney/sendmoney.dart';
import 'package:sutraq/ui/nav_page/dashboard/viewall.dart';
import 'package:sutraq/ui/nav_page/dashboard/profileview.dart';
import 'package:sutraq/ui/screens/test2.dart';
import 'package:sutraq/ui/widgets/Alphaloancard.dart';
import 'package:sutraq/ui/widgets/accesbancard.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/iconbalnce.dart';
import 'package:get/get.dart';
import 'package:sutraq/ui/widgets/reusedialougecontainer.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({Key? key}) : super(key: key);

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundDashboardColor,
        body: NestedScrollView(
          physics: NeverScrollableScrollPhysics(),
          headerSliverBuilder: (context, isScolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                collapsedHeight: 180.h,
                expandedHeight: 180.h,
                flexibleSpace: ProfileView(),
              )
            ];
          },
          body: Container(
            padding: EdgeInsets.only(top: 15),
            height: 490.h,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.defaultDialog(
                                    radius: 10,
                                    title: "Choose Question",
                                    content: Container(
                                      height: 304.h,
                                      width: 344.w,
                                      decoration: BoxDecoration(
                                        color: AppColors.whiteColor,
                                      ),
                                      child: Column(
                                        children: [
                                          SmallText(
                                            text: "Pick a card to continue.",
                                            size: 12.sp,
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Row(
                                            children: [
                                              ReuseDialougeBlueCard(),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              ReuseDialougeWhiteCard(
                                                  img: AssetImage(
                                                      "assets/images/Frame.png")),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              ReuseDialougeWhiteCard(
                                                  img: AssetImage(
                                                      "assets/images/usa.png")),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 70,
                                          ),
                                          ReuseableButton(
                                              text: "Withdraw FUnds"),
                                        ],
                                      ),
                                    ));
                              },
                              child: IconBlance(
                                icon: Icons.account_balance_wallet_outlined,
                                color: Color(0xFF0094FF).withOpacity(0.1),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Fund Wallet",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.defaultDialog(
                                    radius: 10,
                                    title: "Choose Question",
                                    content: Container(
                                      height: 304.h,
                                      width: 344.w,
                                      decoration: BoxDecoration(
                                        color: AppColors.whiteColor,
                                      ),
                                      child: Column(
                                        children: [
                                          SmallText(
                                            text: "Pick a card to continue.",
                                            size: 12.sp,
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Row(
                                            children: [
                                              ReuseDialougeBlueCard(),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              ReuseDialougeWhiteCard(
                                                  img: AssetImage(
                                                      "assets/images/Frame.png")),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              ReuseDialougeWhiteCard(
                                                  img: AssetImage(
                                                      "assets/images/usa.png")),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 70,
                                          ),
                                          InkWell(
                                              onTap: () =>
                                                  Get.to(() => SendMoney()),
                                              child: ReuseableButton(
                                                  text: "Send Money")),
                                        ],
                                      ),
                                    ));
                              },
                              child: IconBlance(
                                  icon: Icons.input_outlined,
                                  color: Color(0xFF0094FF).withOpacity(0.1)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Send Money",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.defaultDialog(
                                    radius: 10,
                                    title: "Choose Question",
                                    content: Container(
                                      height: 304.h,
                                      width: 344.w,
                                      decoration: BoxDecoration(
                                        color: AppColors.whiteColor,
                                      ),
                                      child: Column(
                                        children: [
                                          SmallText(
                                            text: "Pick a card to continue.",
                                            size: 12.sp,
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Row(
                                            children: [
                                              ReuseDialougeBlueCard(),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              ReuseDialougeWhiteCard(
                                                  img: AssetImage(
                                                      "assets/images/Frame.png")),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              ReuseDialougeWhiteCard(
                                                  img: AssetImage(
                                                      "assets/images/usa.png")),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 70,
                                          ),
                                          ReuseableButton(text: "Fund Wallet"),
                                        ],
                                      ),
                                    ));
                              },
                              child: IconBlance(
                                  icon: Icons.input_rounded,
                                  color: Color(0xFF0094FF).withOpacity(0.1)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Withdraw",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                // jokhon scroll kora hoy tokhon
                Positioned(
                  top: 95.h,
                  child: Container(
                    padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                    height: 530.h,
                    width: 375.w,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Recent Transactions",
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Gelion",
                            color: Color(0xFF333333),
                          ),
                        ),
                        ReuseAcccessCard(trillingText: "\$2400"),
                        ReuseAlphaCard(trillingText: "N10,000"),
                        ReuseAcccessCard(trillingText: "N4,500,000"),
                        ReuseAlphaCard(trillingText: "N10,000"),
                        ReuseAcccessCard(trillingText: "N2,000"),
                        SizedBox(
                          height: 10.h,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () => Get.to(() => ViewAll()),
                            child: Container(
                              child: Text(
                                "View All",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.mainColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
