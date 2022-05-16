import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/sutraqaccountandtransacting/idupload.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/reusecontainer.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class UploadPhoto extends StatelessWidget {
  const UploadPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: BigText(
                  text: "Upload Photo",
                  size: 20.sp,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 35.w, right: 35.w),
                child: SmallText(
                  text:
                      "Upload a photo of yourself. A picture showing your face properly is recommended",
                  size: 12.sp,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                  padding: EdgeInsets.all(20.w),
                  height: 550.h,
                  width: 344.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.whiteColor,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 60.h),
                        height: 185.h,
                        width: 240.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: AppColors.whiteColor,
                          border: Border.all(
                            color: AppColors.blackColor,
                            width: 2.w,
                          ),
                          image: DecorationImage(
                            image:
                                AssetImage("assets/images/Rectangle 137.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 30.h),
                              child: Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.image_sharp,
                                  size: 70.w,
                                  color: AppColors.backgroundColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            BigText(
                              text: "Tap to select photo",
                              color: AppColors.smalltextColor,
                              size: 16.sp,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SmallText(text: "Allows png, jpeg formats"),
                      SizedBox(
                        height: 90.h,
                      ),
                      InkWell(
                          onTap: () => Get.to(() => IdUpload()),
                          child: ReuseableButton(text: "Next")),
                      SizedBox(
                        height: 20.h,
                      ),
                      BigText(
                        text: "Step 1/2",
                        color: AppColors.smalltextColor,
                        size: 16.sp,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
