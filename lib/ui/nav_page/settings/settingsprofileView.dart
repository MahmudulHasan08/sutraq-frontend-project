import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/widgets/appbar_text.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class SettingsProfileView extends StatefulWidget {
  const SettingsProfileView({Key? key}) : super(key: key);

  @override
  State<SettingsProfileView> createState() => _SettingsProfileViewState();
}

class _SettingsProfileViewState extends State<SettingsProfileView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundSettingsColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.backgroundSettingsColor,
        title: Text(
          "Account Settings",
          style: TextStyle(
            fontSize: 20.sp,
            color: AppColors.whiteColor,
            fontFamily: "Gelion",
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 51.h,
                    width: 51.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      gradient: LinearGradient(colors: [
                        Color(0xFF3417AB),
                        Color(0xFF4E17AB).withOpacity(0.53),
                      ]),
                    ),
                    child: Center(
                      child: Text(
                        "OP",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.whiteColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Column(
                    children: [
                      SmallText(
                        text: "Ogar Precious",
                        color: AppColors.whiteColor,
                      ),
                      SmallText(
                        text: "Su/Pre123",
                        color: AppColors.whiteColor,
                      ),
                    ],
                  )
                ],
              ),
              Container(
                child: Icon(
                  Icons.chevron_right_outlined,
                  color: AppColors.whiteColor,
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
