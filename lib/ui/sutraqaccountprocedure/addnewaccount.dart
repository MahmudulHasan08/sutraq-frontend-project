import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/sutraqaccountprocedure/fund.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/reusecontainer.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class AddNewAccount extends StatelessWidget {
  const AddNewAccount({Key? key}) : super(key: key);

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
              child: BigText(text: "Add New Account"),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 22.w,
                right: 22.w,
              ),
              child: SmallText(
                text:
                    "Ensure to fill in the neccessary details of the recipient in order to continue",
                size: 12.sp,
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: SmallText(
                text: "Currency",
                size: 14.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              child: ReuseAbleContainer22(text: "choose"),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 8.w),
              child: InkWell(
                  onTap: () => Get.to(() => Fund()),
                  child: ReuseableButton(text: "Confirm")),
            )
          ],
        ),
      ),
    ));
  }
}
