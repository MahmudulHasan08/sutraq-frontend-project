import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/account_related/addaccount.dart';
import 'package:sutraq/ui/widgets/Alphaloancard.dart';
import 'package:sutraq/ui/widgets/accesbancard.dart';
import 'package:sutraq/ui/widgets/iconbalnce.dart';

import 'dashboard/viewall.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  double? currentIndex;
  List flagimg = [
    "assets/images/card3.png",
    "assets/images/usa.png",
    "assets/images/splashimg.png"
  ];
  List text1 = ["NGN", "USD", "SUTRAQ CURRENCY"];
  List text2 = ["N190,00", "\$42,000", "Q190,000"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundWalletColor,
      //app bar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text(
          "My Wallets",
          style: TextStyle(
            fontSize: 20.sp,
            color: AppColors.blackColor,
            fontFamily: "Gelion",
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //slider
            Container(
                height: 89.h,
                child: ListView.builder(
                    shrinkWrap: true,
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
                              color: Color(0xFF0094FF).withOpacity(0.1),
                            )
                          ],
                          color: currentIndex == 0
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 12.h,
                                          width: 14.w,
                                          child: Image.asset(
                                              flagimg[currentIndex]),
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
                                              color: currentIndex == 0
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
                                    color: currentIndex == 0
                                        ? AppColors.greyColor
                                        : Color(0xFF0A004A).withOpacity(0.4),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
              height: 10.h,
            ),
            //dotindicator
            Align(
              alignment: Alignment.center,
              child: DotsIndicator(
                dotsCount: 3,
                position: 0,
                decorator: DotsDecorator(
                  activeColor: AppColors.tablabelColor,
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Stack(
              children: [
                Positioned(
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    height: 530.h,
                    width: 351.w,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                IconBlance(
                                  icon: Icons.account_balance_wallet_outlined,
                                  color: AppColors.mainColor.withOpacity(0.1),
                                  containercolor: AppColors.mainColor,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Fund Wallet",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.semiblackColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                IconBlance(
                                  icon: Icons.input_outlined,
                                  color: AppColors.mainColor.withOpacity(0.1),
                                  containercolor: AppColors.mainColor,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Send Money",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.semiblackColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                IconBlance(
                                  icon: Icons.input_rounded,
                                  color: AppColors.mainColor.withOpacity(0.1),
                                  containercolor: AppColors.mainColor,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Withdraw",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.semiblackColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 18, top: 5),
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
                            ReuseAlphaCard(trillingText: "N10,000"),
                            ReuseAcccessCard(trillingText: "N4,500,000"),
                            ReuseAlphaCard(trillingText: "N10,000"),
                            // ReuseAcccessCard(trillingText: "N2,000"),
                            SizedBox(
                              height: 10,
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
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 12.h,
                  right: 20.w,
                  child: FloatingActionButton(
                    backgroundColor: AppColors.floatingbutttonColor,
                    onPressed: () {
                      Get.to(() => AddAccount());
                    },
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
