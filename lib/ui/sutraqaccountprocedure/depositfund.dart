import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/sutraqaccountprocedure/fund.dart';
import 'package:sutraq/ui/sutraqaccountprocedure/nextdepositfund.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/reusecontainer.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class DepositeFund extends StatelessWidget {
  const DepositeFund({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 60.w, right: 35.w, top: 62.h),
              child: BigText(text: "Deposit Funds"),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 90.w,
              ),
              child: SmallText(
                text: "Enter amount to deposit",
                size: 12.sp,
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: SmallText(
                text: "Amount",
                size: 14.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
                child: ReuseableTextFiled(
                    hinText: "Enter Amount",
                    prefixIcon: Icon(
                      Icons.navigation,
                      color: AppColors.mainColor,
                    ))),
            SizedBox(
              height: 30.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 8.w),
              child: InkWell(
                  onTap: () => Get.to(() => NextDepositFund()),
                  child: ReuseableButton(text: "Proceed to Payment")),
            )
          ],
        ),
      ),
    ));
  }
}
