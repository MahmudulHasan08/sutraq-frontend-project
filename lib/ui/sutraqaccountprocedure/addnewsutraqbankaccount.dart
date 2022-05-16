import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/account_related/withdrawfunds.dart';
import 'package:sutraq/ui/sutraqaccountprocedure/pin.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/reusecontainer.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class AddNewSutraqBankAccount extends StatefulWidget {
  const AddNewSutraqBankAccount({Key? key}) : super(key: key);

  @override
  State<AddNewSutraqBankAccount> createState() =>
      _AddNewSutraqBankAccountState();
}

class _AddNewSutraqBankAccountState extends State<AddNewSutraqBankAccount> {
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
          text: "Add New Bank Account",
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
                margin: EdgeInsets.only(left: 60.w, right: 60.w),
                child: SmallText(
                    text:
                        "Ensure to fill in the neccessary details of the recipient in order to continue"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.h),
                child: Container(
                  height: 524.h,
                  width: 344.w,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(20.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SmallText(text: "Country"),
                        SizedBox(
                          height: 10.h,
                        ),
                        ReuseAbleContainer2(
                          text: "Select Country",
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SmallText(text: "Bank"),
                        SizedBox(
                          height: 10.h,
                        ),
                        ReuseAbleContainer2(
                          text: "Select Bank",
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SmallText(text: "Account Number"),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10.w),
                            child: ReuseableTextFiled(
                                hinText: "Your Account Number")),
                        SizedBox(
                          height: 10.h,
                        ),
                        SmallText(text: "Registered Phone Number"),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10.w),
                            child: ReuseableTextFiled(
                                hinText: "Your Phone Number")),
                        SizedBox(
                          height: 30.h,
                        ),
                        InkWell(
                            onTap: () => Get.to(() => Pin()),
                            child: ReuseableButton(text: "Confirm")),
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
