import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/nav_page/settings/setting_bankaccount/change_pin.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class CreditAndDebitCards extends StatelessWidget {
  const CreditAndDebitCards({Key? key}) : super(key: key);

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
                  height: 33.h,
                  width: 33.w,
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
          text: "Credit/Debit Cards",
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
              height: 620.h,
              width: 339.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.whiteColor,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 100.w),
                    child: Row(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Radio(
                                activeColor: AppColors.mainColor,
                                value: 1,
                                groupValue: 1,
                                onChanged: (_) {})),
                        SmallText(
                          text: "Set as default",
                          size: 12.sp,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    height: 150.h,
                    width: 270.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        image: DecorationImage(
                          image: AssetImage("assets/images/card4.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SmallText(
                    text: "Remove",
                    color: Color(0xFFEC615B),
                    size: 10.sp,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    height: 1.h,
                    width: 36.w,
                    color: Color(0xFFEC615B),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 100.w),
                    child: Row(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Radio(
                                activeColor: AppColors.mainColor,
                                value: 2,
                                groupValue: 1,
                                onChanged: (_) {})),
                        SmallText(
                          text: "Set as default",
                          size: 12.sp,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    height: 150.h,
                    width: 270.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        image: DecorationImage(
                          image: AssetImage("assets/images/card4.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SmallText(
                    text: "Remove",
                    color: Color(0xFFEC615B),
                    size: 10.sp,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    height: 1.h,
                    width: 36.w,
                    color: Color(0xFFEC615B),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  InkWell(
                    onTap: () => Get.to(() => ChangePin()),
                    child: Container(
                      margin: EdgeInsets.only(left: 20.w, right: 20.w),
                      child: ReuseableButton(text: "ADD NEW"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
