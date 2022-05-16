import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/account_related/addnewbankcard.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/reusecontainer.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class AddAccount extends StatefulWidget {
  const AddAccount({Key? key}) : super(key: key);

  @override
  State<AddAccount> createState() => _AddAccountState();
}

class _AddAccountState extends State<AddAccount> {
  String dropdownValue = "Choose Currency";
  List<String> currnecy = ["SUTRAQ", "USD", "NGN"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
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
            text: "Add New Account",
            size: 20.sp,
            color: AppColors.backgroundSettingsColor,
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 60.w, right: 60.w, top: 20.h),
                child: SmallText(
                  text:
                      "Ensure to fill in the neccessary details of the recipient in order to continue",
                  size: 12.sp,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                margin: EdgeInsets.only(left: 10.w),
                child: SmallText(
                  text: "Currency",
                  size: 14.sp,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ReuseAbleContainer2(text: "Choose Currency"),
              SizedBox(
                height: 30.h,
              ),
              InkWell(
                  onTap: () => Get.to(() => AddNewBankCard()),
                  child: ReuseableButton(text: "Confirm")),
            ],
          ),
        ),
      ),
    );
  }
}
