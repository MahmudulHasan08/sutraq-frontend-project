import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/account_related/withdrawfunds.dart';
import 'package:sutraq/ui/nav_page/dashboard/sendmoney/Transfersummery.dart';
import 'package:sutraq/ui/screens/test1.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/reusecontainer.dart';
import 'package:sutraq/ui/widgets/reusedialougecontainer.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class BankTransfer extends StatefulWidget {
  const BankTransfer({Key? key}) : super(key: key);

  @override
  State<BankTransfer> createState() => _BankTransferState();
}

class _BankTransferState extends State<BankTransfer> {
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
          text: "Bank Transfer",
          size: 20.sp,
          color: AppColors.backgroundSettingsColor,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.w, right: 20.w),
                child: SmallText(
                    text:
                        "Ensure to fill in the neccessary details of the recipient in order to continue"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.h),
                child: Container(
                  height: 770.h,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(20.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SmallText(text: "Select Your Account"),
                            SmallText(
                              text: "+ Add New",
                              color: AppColors.tablabelColor,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        ReuseAbleContainer(
                          text: "NGN Account ",
                          icon1: Icons.account_balance_outlined,
                          icon: InkWell(
                            onTap: () {
                              Get.defaultDialog(
                                  radius: 10,
                                  title: "Choose Question",
                                  content: Container(
                                    height: 150.h,
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
                                            InkWell(
                                                onTap: () {
                                                  Get.back();
                                                },
                                                child: ReuseDialougeBlueCard()),
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
                                      ],
                                    ),
                                  ));
                            },
                            child: Icon(
                              Icons.expand_more_outlined,
                              size: 30.w,
                              color: AppColors.mainColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SmallText(text: "Recipients Country"),
                        SizedBox(
                          height: 10.h,
                        ),
                        ReuseAbleContainer(
                          text: "Nigeria",
                          textSize: 16.sp,
                          icon1: Icons.place_outlined,
                          icon: Icon(
                            Icons.expand_more_outlined,
                            size: 30.w,
                            color: AppColors.mainColor,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SmallText(text: "Recipients Destination"),
                        SizedBox(
                          height: 10.h,
                        ),
                        ReuseAbleContainer(
                          text: "UBA Bank",
                          textSize: 16.sp,
                          icon1: Icons.account_balance_outlined,
                          icon: Icon(
                            Icons.expand_more_outlined,
                            size: 30.w,
                            color: AppColors.mainColor,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SmallText(text: "Recipients Account Name"),
                        SizedBox(
                          height: 10.h,
                        ),
                        ReuseableTextFiled(
                          hinText: "Enter Account Name",
                          prefixIcon: Icon(
                            Icons.perm_contact_calendar_outlined,
                            size: 30.w,
                            color: AppColors.mainColor,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SmallText(text: "Account Number"),
                        SizedBox(
                          height: 10.h,
                        ),
                        ReuseableTextFiled(
                          hinText: "Enter Account Number",
                          prefixIcon: Icon(
                            Icons.dialpad_outlined,
                            size: 30.w,
                            color: AppColors.mainColor,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SmallText(text: "Amount"),
                        SizedBox(
                          height: 10.h,
                        ),
                        ReuseableTextFiled(
                          hinText: "Enter Amount",
                          prefixIcon: Icon(
                            Icons.navigation,
                            size: 30.w,
                            color: AppColors.mainColor,
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        InkWell(
                            onTap: () => Get.to(() => TransferSummary()),
                            child: ReuseableButton(text: "Proceed")),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
