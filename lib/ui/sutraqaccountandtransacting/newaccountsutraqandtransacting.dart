import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/sutraqaccountandtransacting/goodjob.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/reusecontainer.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class NewAccountSutraqAndTransacting extends StatefulWidget {
  const NewAccountSutraqAndTransacting({Key? key}) : super(key: key);

  @override
  State<NewAccountSutraqAndTransacting> createState() =>
      _NewAccountSutraqAndTransactingState();
}

class _NewAccountSutraqAndTransactingState
    extends State<NewAccountSutraqAndTransacting> {
  bool _obscurtext = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 38.h,
                  width: 42.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/splashimg.png"),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 35.w, right: 35.w),
                child: BigText(
                  text: "Create your Sutraq account & start transacting!",
                  size: 20.sp,
                  textAlign: TextAlign.center,
                  color: AppColors.bigTextdeepblueColor,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Align(
                alignment: Alignment.center,
                child: SmallText(
                  text: "Enter your details to begin",
                  size: 12.sp,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              SmallText(
                text: "I’m opening this account for",
                size: 14.sp,
              ),
              SizedBox(
                height: 10.h,
              ),
              ReuseAbleContainer(
                text: "Personal use",
                icon: Icon(
                  Icons.expand_more_outlined,
                  size: 30,
                  color: AppColors.mainColor,
                ),
                icon1: Icons.perm_contact_calendar_outlined,
              ),
              SizedBox(
                height: 10.h,
              ),
              SmallText(
                text: "First Name",
                size: 14.sp,
              ),
              SizedBox(
                height: 5.h,
              ),
              ReuseAbleContainer1(text: "Precious"),
              SizedBox(
                height: 10.h,
              ),
              SmallText(text: "Last Name"),
              SizedBox(
                height: 5.h,
              ),
              ReuseAbleContainer1(text: "Ogar"),
              SizedBox(
                height: 10.h,
              ),
              SmallText(text: "Email Address"),
              SizedBox(
                height: 10.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 10.w),
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
              SizedBox(height: 10.h),
              SmallText(text: "Password"),
              SizedBox(
                height: 10.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 10.w),
                height: 57.h,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.smalltextColor,
                  ),
                  shape: BoxShape.rectangle,
                ),
                child: TextField(
                  obscureText: _obscurtext,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.password,
                      color: AppColors.mainColor,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscurtext = !_obscurtext;
                        });
                      },
                      child: Icon(
                        _obscurtext
                            ? Icons.visibility
                            : Icons.visibility_off_outlined,
                        color: AppColors.smalltextColor,
                      ),
                    ),
                    hintText: "presh@mail.com",
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
                height: 15.h,
              ),
              ReuseAbleContainer(
                text: "Nigeria",
                icon1: Icons.place_outlined,
                icon: Icon(
                  Icons.expand_more_outlined,
                  size: 30.sp,
                  color: AppColors.mainColor,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              InkWell(
                onTap: () => Get.to(() => GoodJob()),
                child: Container(
                    margin: EdgeInsets.only(left: 10.w),
                    child: ReuseableButton(text: "Register")),
              ),
              SizedBox(
                height: 10.h,
              ),
              SmallText(
                text:
                    "By signing up, you agree to our Terms of Use and Privacy Policy",
                size: 12.sp,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
