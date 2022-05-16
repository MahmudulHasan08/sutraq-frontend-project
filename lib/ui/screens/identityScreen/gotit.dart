import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/nav_page/dashboard/dashboard.dart';
import 'package:sutraq/ui/nav_page/mainpage.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:get/get.dart';

class GotIt extends StatelessWidget {
  const GotIt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: InkWell(
          onTap: () {
            Get.snackbar("Got IT", "ALl Work done",
                backgroundColor: AppColors.mainColor,
                colorText: AppColors.whiteColor);
            Get.to(() => MainPage());
          },
          child: Container(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 100),
              child: ReuseableButton(text: "Got iT!")),
        ),
        backgroundColor: AppColors.backgroundideaColor,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 118.h, left: 100.w, right: 100.w),
              height: 176.h,
              width: 176.w,
              child: Image.asset("assets/images/idea 1.png"),
            )
          ],
        ),
      ),
    );
  }
}
