import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/screens/identityScreen/gotit.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class CheckMail extends StatelessWidget {
  const CheckMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        body: Container(
          margin: EdgeInsets.only(
            left: 24.w,
            top: 182.h,
            right: 24.w,
          ),
          height: 448.h,
          width: 332.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 89.h,
                  width: 82.w,
                  child: Image.asset("assets/images/inbox (1).jpg"),
                ),
                SizedBox(
                  height: 30.h,
                ),
                BigText(text: "Check your Inbox!"),
                SizedBox(
                  height: 10.h,
                ),
                SmallText(
                  text:
                      "An email has been sent to you. Click the link to reset your password.",
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                    onTap: () {
                      Get.snackbar(
                        "Recover Password",
                        "Successfully Send",
                        backgroundColor: AppColors.mainColor,
                        colorText: AppColors.whiteColor,
                      );
                      Get.to(() => GotIt());
                    },
                    child: ReuseableButton(text: "Check Mail")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
