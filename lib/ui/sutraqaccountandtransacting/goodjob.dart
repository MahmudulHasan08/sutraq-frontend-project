import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/sutraqaccountandtransacting/newaccountsutraqandtransacting.dart';
import 'package:sutraq/ui/sutraqaccountandtransacting/uploadphoto.dart';
import 'package:sutraq/ui/sutraqaccountprocedure/addnewaccount.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class GoodJob extends StatelessWidget {
  const GoodJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundideaColor,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 100.w, right: 100.w, top: 188.h),
              height: 176.h,
              width: 176.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/idea 1.png"),
                fit: BoxFit.cover,
              )),
            ),
            Container(
              child: BigText(
                text: "Good!",
                color: AppColors.mainColor,
                size: 25.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              child: SmallText(
                text: "Now tell us a bit about yourself",
                size: 12.sp,
                color: Color(0xFFF0F0F0),
              ),
            ),
            SizedBox(
              height: 120.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 40.w, right: 40.w),
              child: InkWell(
                  onTap: () => Get.to(() => UploadPhoto()),
                  child: ReuseableButton(text: "KYC")),
            )
          ],
        ),
      ),
    );
  }
}

//
