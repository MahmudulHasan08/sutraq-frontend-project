import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/account_related/fundwallet2.dart';
import 'package:sutraq/ui/sutraqaccountprocedure/new_sutraq_account.dart';
import 'package:sutraq/ui/widgets/accountcard.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/reusecontainer.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class WithDrawFunds extends StatefulWidget {
  const WithDrawFunds({Key? key}) : super(key: key);

  @override
  State<WithDrawFunds> createState() => _WithDrawFundsState();
}

class _WithDrawFundsState extends State<WithDrawFunds> {
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
          text: "Withdraw Funds",
          size: 20.sp,
          color: AppColors.backgroundSettingsColor,
        ),
        centerTitle: true,
      ),
      body: Column(
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
                      left: 85.w,
                      child: ReuseAccountCard(
                          text: "NGN",
                          text2: "N190,000",
                          color: AppColors.backgroundSettingsColor,
                          img: Image.asset("assets/images/card3.png"))),
                  Positioned(
                    top: 70.h,
                    child: Container(
                      margin: EdgeInsets.only(left: 20.w),
                      child: SmallText(
                        text: "Amount",
                      ),
                    ),
                  ),
                  Positioned(
                      top: 105.h,
                      child: Container(
                        margin: EdgeInsets.only(left: 20.w),
                        child: ReuseableTextFiled1(
                          hinText: "Enter Amount",
                          prefixIcon: Icon(
                            Icons.navigation,
                            color: AppColors.mainColor,
                          ),
                        ),
                      )),
                  // Positioned(
                  //   top: 180.h,
                  //   child: Container(
                  //     margin: EdgeInsets.only(left: 20.w),
                  //     child: SmallText(
                  //       text: "Payment Option",
                  //       size: 14.sp,
                  //     ),
                  //   ),
                  // ),
                  // Positioned(
                  //     bottom: 195.h,
                  //     child: Container(
                  //       margin: EdgeInsets.only(left: 15.w),
                  //       child: ReuseAbleContainer33(
                  //         text2: "Bank Account",
                  //         widget: Icon(
                  //           Icons.credit_card_outlined,
                  //           size: 14.w,
                  //         ),
                  //         icon: Icons.expand_more_outlined,
                  //       ),
                  //     )),
                  Positioned(
                    top: 190.h,
                    child: Container(
                      margin: EdgeInsets.only(left: 20.w),
                      child: SmallText(
                        text: "Select Bank Account",
                        size: 14.sp,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 190.h,
                    right: 20,
                    child: Container(
                      margin: EdgeInsets.only(left: 20.w),
                      child: SmallText(
                        text: "+ Add New",
                        size: 14.sp,
                        color: AppColors.tablabelColor,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 180.h,
                      child: Container(
                        margin: EdgeInsets.only(left: 15.w),
                        child: ReuseableTextFiled1(
                            prefixIcon: Icon(
                              Icons.account_balance_wallet_outlined,
                              color: AppColors.mainColor,
                            ),
                            sufixIcon: Icon(
                              Icons.expand_more_outlined,
                              color: AppColors.mainColor,
                            ),
                            hinText: "   938103802 (Access Bank)"),
                      )),
                  Positioned(
                      bottom: 55.h,
                      child: Container(
                        margin: EdgeInsets.only(left: 25.w),
                        child: InkWell(
                            onTap: () => Get.to(() => NewSutraqAccount()),
                            child: ReuseableButton2(text: "PROCEED")),
                      ))
                ],
              ))
        ],
      ),
    ));
  }
}
