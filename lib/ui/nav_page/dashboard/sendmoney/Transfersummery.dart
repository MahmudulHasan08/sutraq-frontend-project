import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/nav_page/dashboard/sendmoney/Transaction_pin.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/small_text.dart';
import 'package:sutraq/ui/widgets/widgetcards.dart';

class TransferSummary extends StatefulWidget {
  const TransferSummary({Key? key}) : super(key: key);

  @override
  State<TransferSummary> createState() => _TransferSummaryState();
}

class _TransferSummaryState extends State<TransferSummary> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
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
            Align(
              alignment: Alignment.center,
              child: BigText(text: "Transfer Summary"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.h),
              child: Container(
                padding: EdgeInsets.all(20.w),
                height: 550.h,
                width: 344.w,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 14.r,
                      spreadRadius: 0,
                      color: Color(0xFF000000).withOpacity(0.5),
                    )
                  ],
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CardtransferSummary(
                      "Recipient",
                      "Tobi Hassan",
                      Icons.perm_contact_calendar_outlined,
                    ),
                    CardtransferSummary(
                      "Recipients Country",
                      "Nigeria",
                      Icons.place_outlined,
                    ),
                    CardtransferSummary(
                      "Bank",
                      "Access Bank",
                      Icons.account_balance_outlined,
                    ),
                    CardtransferSummary(
                      "Account Number",
                      "0127890013",
                      Icons.dialpad_outlined,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                SmallText(
                                  text: "Amount to send",
                                  size: 12.sp,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                BigText(
                                  text: "N20,000",
                                  size: 21.sp,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SmallText(
                                  text: "Service Fee",
                                  size: 12.sp,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                BigText(
                                  text: "N50",
                                  size: 21.sp,
                                ),
                              ],
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InkWell(
                        onTap: () => Get.to(() => TransactionPin()),
                        child: ReuseableButton(text: "Send N20,050")),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
