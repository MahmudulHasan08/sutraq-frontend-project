import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';

class ReusePinTextFleld extends StatelessWidget {
  const ReusePinTextFleld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(left: 10.w),
        width: 41.w,
        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
            color: AppColors.blackColor,
            width: 2.w,
          )),
        ),
        child: TextField(
          decoration: InputDecoration(
            labelText: "    *",
          ),
        ),
      ),
    );
  }
}

class ReusePin2TextFleld extends StatelessWidget {
  const ReusePin2TextFleld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(left: 10.w),
        width: 41.w,
        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
            color: AppColors.blackColor,
            width: 2.w,
          )),
        ),
        child: TextField(
          decoration: InputDecoration(
            labelText: "",
          ),
        ),
      ),
    );
  }
}
