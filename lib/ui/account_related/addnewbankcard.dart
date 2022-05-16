import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/account_related/fundwallet.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/reusecontainer.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class AddNewBankCard extends StatefulWidget {
  const AddNewBankCard({Key? key}) : super(key: key);

  @override
  State<AddNewBankCard> createState() => _AddNewBankCardState();
}

class _AddNewBankCardState extends State<AddNewBankCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            text: "Add New Bank Card",
            size: 20.sp,
            color: AppColors.backgroundSettingsColor,
          ),
          centerTitle: true,
        ),
        backgroundColor: AppColors.backgroundColor,
        body: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 60.w, right: 60.w),
                child: SmallText(
                  text:
                      "Ensure to fill in the neccessary details of the recipient in order to continue",
                  size: 12.sp,
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        child: Container(
                          height: 450.h,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: -70.h,
                        left: 35.w,
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 150.h,
                            width: 270.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/card4.png"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.tablabelColor,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 100.h,
                        child: Container(
                          margin: EdgeInsets.only(left: 10.w),
                          child: SmallText(text: "Card Number"),
                        ),
                      ),
                      Positioned(
                        top: 140.h,
                        child: Container(
                          margin: EdgeInsets.only(left: 8.w),
                          child: ReuseableTextFiled1(
                            hinText: "Your Card Number",
                            prefixIcon: Icon(
                              Icons.navigation,
                              color: AppColors.mainColor,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 220.h,
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: SmallText(
                            text: "Expiry date",
                            size: 14.sp,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 245.h,
                        left: 12.w,
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                height: 57.h,
                                width: 150.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.r),
                                    border: Border.all(
                                      color: AppColors.greyColor,
                                      width: 1,
                                    )),
                                child: Center(
                                    child: BigText(
                                  text: "MM/YY",
                                  color: AppColors.blackColor,
                                  size: 14.sp,
                                )),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 57.h,
                                width: 150.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.r),
                                    border: Border.all(
                                      color: AppColors.greyColor,
                                      width: 1,
                                    )),
                                child: Center(
                                  child: BigText(
                                    text: "CVV",
                                    size: 14.sp,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 40.h,
                        child: Container(
                            margin: EdgeInsets.only(left: 7.w),
                            child: InkWell(
                                onTap: () => Get.to(() => FundWallet()),
                                child: ReuseableButton2(text: "Confirm"))),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
