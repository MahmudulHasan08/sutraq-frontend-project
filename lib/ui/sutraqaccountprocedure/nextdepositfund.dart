import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/sutraqaccountprocedure/addnewsutraqbankaccount.dart';
import 'package:sutraq/ui/sutraqaccountprocedure/addnewsutraqbankcard.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class NextDepositFund extends StatelessWidget {
  const NextDepositFund({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: Container(
          margin: EdgeInsets.only(
            left: 10,
            top: 10,
          ),
          child: InkWell(
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
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                child: BigText(
                  text: "Deposit Funds",
                  size: 20.sp,
                  color: AppColors.backgroundSettingsColor,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Align(
              alignment: Alignment.center,
              child: SmallText(
                text: "Select your preferred payment method",
                color: AppColors.blackColor,
                size: 12.sp,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            InkWell(
              onTap: () => Get.to(() => AddNewSutraqBankAccount()),
              child: Container(
                padding: EdgeInsets.all(10.w),
                height: 94.h,
                width: 344.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.r),
                    color: AppColors.whiteColor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        blurRadius: 13,
                        spreadRadius: 0,
                        color: Color(0xFF046AE1).withOpacity(0.12),
                      )
                    ]),
                child: ListTile(
                    leading: Icon(
                      Icons.account_balance_outlined,
                      color: AppColors.mainColor,
                    ),
                    title: BigText(
                      text: "Bank Account",
                      size: 14.sp,
                    ),
                    subtitle: Text(
                      "Make payments directly from your bank account to your sutraq account",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: "DMSans",
                        color: AppColors.smalltextColor,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              onTap: () => Get.to(() => AddNewSutraBankCard()),
              child: Container(
                padding: EdgeInsets.all(10.w),
                height: 94.h,
                width: 344.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.r),
                    color: AppColors.whiteColor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        blurRadius: 13,
                        spreadRadius: 0,
                        color: Color(0xFF046AE1).withOpacity(0.12),
                      )
                    ]),
                child: ListTile(
                    leading: Icon(
                      Icons.credit_card_outlined,
                      color: AppColors.mainColor,
                    ),
                    title: BigText(
                      text: "Card Payment",
                      size: 14.sp,
                    ),
                    subtitle: Text(
                      "Make payments directly into your accounts from you credit/debit cards",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: "DMSans",
                        color: AppColors.smalltextColor,
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
