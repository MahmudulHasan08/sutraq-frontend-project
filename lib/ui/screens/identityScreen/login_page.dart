import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/nav_page/mainpage.dart';
import 'package:sutraq/ui/screens/identityScreen/forgot_password.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/icon.dart';
import 'package:sutraq/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurtext = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: IconUnique(
                    widget: Image.asset("assets/images/splashimg.png"),
                    height: 86.h,
                    width: 94.w,
                    top: 54.h),
              ),
              SizedBox(
                height: 30.h,
              ),
              Align(
                alignment: Alignment.center,
                child: BigText(
                  text: "Welcome Back!",
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: SmallText(text: "Enter your details to continue"),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  SizedBox(height: 10.h),
                  SmallText(text: "Password"),
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
                    height: 10.h,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () => Get.to(() => ForgetPassword()),
                        child: SmallText(
                          text: "Forget Password?",
                          color: AppColors.mainColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () => Get.to(() => MainPage()),
                    child: ReuseableButton(text: "Login"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Wrap(
                      children: [
                        SmallText(text: "Need an Account? "),
                        Text(
                          "Try Su",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.mainColor,
                          ),
                        ),
                        SmallText(text: 'traq'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 48.h,
                      width: 48.w,
                      child: Image.asset("assets/images/fingerprint_24px.jpg"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Tap to use Fingerprint",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.mainColor,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
