import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/screens/identityScreen/checkmail.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/icon.dart';
import 'package:sutraq/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButton(),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 86,
                  width: 94,
                  margin: EdgeInsets.only(top: 50),
                  child: Image.asset("assets/images/splashimg.png"),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.center,
                child: BigText(text: "Forgot Password?"),
              ),
              Align(
                alignment: Alignment.center,
                child: SmallText(
                    text:
                        'Enter the email address associated with your account to recover password.'),
              ),
              SizedBox(
                height: 50,
              ),
              SmallText(text: "Email Address"),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 57.h,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.smalltextColor,
                  ),
                  shape: BoxShape.rectangle,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail_outline,
                      color: AppColors.mainColor,
                    ),
                    hintText: "presh@mail.com",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.smalltextColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                  onTap: () => Get.to(() => CheckMail()),
                  child: ReuseableButton(text: "Recover PASSWORD")),
            ],
          ),
        ),
      ),
    );
  }
}

// Container(
// height: 33.h,
// width: 33.h,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(34.r),
// color: AppColors.mainColor,
// ),
// child: Icon(
// Icons.arrow_back_outlined,
// color: AppColors.whiteColor,
// ),
// ),
// SizedBox(
// height: 25.h,
// ),
// IconUnique(
// widget: Image.asset("assets/images/splashimg.png"),
// height: 86.h,
// width: 94.w,
// top: 96.h)
