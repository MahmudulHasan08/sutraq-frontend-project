import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/sutraqaccountprocedure/re_enter_pin.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class Pin extends StatefulWidget {
  const Pin({Key? key}) : super(key: key);

  @override
  State<Pin> createState() => _PinState();
}

class _PinState extends State<Pin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(top: 120),
                  height: 44.h,
                  width: 44.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/verified_user_24px.png"),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                child: BigText(
                  text: "Create a transaction Pin",
                  size: 20.sp,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                child: SmallText(
                  text:
                      "This pin is your personal secured pin, used to authorize transactions with sutraq",
                  size: 14.sp,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Wrap(
                children: List.generate(4, (index) {
                  return Container(
                    margin: EdgeInsets.only(left: 10.w),
                    height: 46.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.mainColor,
                          width: 1,
                        ),
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(4.r),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                            offset: Offset(1, 1),
                            spreadRadius: 0,
                            color: Color(0xFF000000).withOpacity(.15),
                          )
                        ]),
                    child: Center(
                      child: Icon(
                        Icons.star,
                        size: 10.w,
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(
                height: 200.h,
              ),
              InkWell(
                onTap: () => Get.to(() => ReEnterPin()),
                child: ReuseableButton(text: "CONFIRM PIN"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
