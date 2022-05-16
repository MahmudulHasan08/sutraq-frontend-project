import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/account_related/fundwallet2.dart';
import 'package:sutraq/ui/account_related/fundwallet2copy.dart';
import 'package:sutraq/ui/widgets/accountcard.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/reusecontainer.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class FundWalletCopy extends StatefulWidget {
  const FundWalletCopy({Key? key}) : super(key: key);

  @override
  State<FundWalletCopy> createState() => _FundWalletCopyState();
}

class _FundWalletCopyState extends State<FundWalletCopy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundColor,
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
          text: "Fund Wallet",
          size: 20.sp,
          color: AppColors.backgroundSettingsColor,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 60.w, right: 60.w),
              child: SmallText(
                  text:
                      "Ensure to fill in the neccessary details of the recipient in order to continue"),
            ),
            Padding(
                padding: EdgeInsets.only(top: 80.h),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      child: Container(
                        height: 450,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.w),
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                    Positioned(
                        top: -50.h,
                        left: 60.w,
                        child: ReuseAccountCard(
                            text: "NGN",
                            text2: "N190,000",
                            color: AppColors.backgroundSettingsColor,
                            img: Image.asset("assets/images/card3.png"))),
                    Positioned(
                      top: 70.h,
                      child: Container(
                        margin: EdgeInsets.only(left: 10.w),
                        child: SmallText(
                          text: "Amount",
                        ),
                      ),
                    ),
                    Positioned(
                      top: 105.h,
                      child: Container(
                        margin: EdgeInsets.only(left: 8.w),
                        child: ReuseableTextFiled1(
                          hinText: "Enter Amount",
                          prefixIcon: Icon(
                            Icons.navigation,
                            color: AppColors.mainColor,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 180.h,
                      child: Container(
                        margin: EdgeInsets.only(left: 10.w),
                        child: SmallText(
                          text: "Payment Option",
                          size: 14.sp,
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 195.h,
                        child: Container(
                          child: ReuseAbleContainer33(
                            text2: "Bank Account",
                            widget: Icon(
                              Icons.credit_card_outlined,
                              color: AppColors.mainColor,
                              size: 14.w,
                            ),
                            icon: Icons.expand_more_outlined,
                          ),
                        )),
                    Positioned(
                      bottom: 160.h,
                      child: Container(
                        margin: EdgeInsets.only(left: 10.w),
                        child: SmallText(
                          text: "Select Account",
                          size: 14.sp,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 160.h,
                      right: 10,
                      child: Container(
                        margin: EdgeInsets.only(left: 10.w),
                        child: SmallText(
                          text: "+ Add New",
                          size: 14.sp,
                          color: AppColors.tablabelColor,
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 90.h,
                        child: Container(
                          child: ReuseAbleContainer33(
                            text2: "938103802 (Access Bank)",
                            widget: SmallText(
                              text: "VISA",
                              color: AppColors.tablabelColor,
                            ),
                            icon: Icons.expand_more_outlined,
                          ),
                        )),
                    Positioned(
                        bottom: 10.h,
                        child: Container(
                          margin: EdgeInsets.only(left: 10.w),
                          child: InkWell(
                              onTap: () => Get.to(() => FundWallet2Copy()),
                              child: ReuseableButton2(text: "PROCEED")),
                        ))
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
