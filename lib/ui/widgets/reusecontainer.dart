import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/widgets/text_field.dart';
import 'big_text.dart';

//not used
class ReuseAbleContainer3 extends StatelessWidget {
  final Widget? widget;
  final String text2;
  final IconData? icon;

  const ReuseAbleContainer3(
      {Key? key, this.widget, required this.text2, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.w),
      height: 57.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(2.w),
        border: Border.all(
          width: 1.w,
          color: AppColors.greyColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: widget,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: BigText(
                      text: text2,
                      size: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Icon(
                icon,
                size: 30.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

////not used
class ReuseAbleContainer33 extends StatelessWidget {
  final Widget? widget;
  final String text2;
  final IconData? icon;

  const ReuseAbleContainer33(
      {Key? key, this.widget, required this.text2, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.w),
      height: 57.h,
      width: 320.w,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(2.w),
        border: Border.all(
          width: 1.w,
          color: AppColors.greyColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10.w),
                    child: widget,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: BigText(
                      text: text2,
                      size: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Icon(
                icon,
                size: 30.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//not used
class ReuseAbleContainer2 extends StatelessWidget {
  final String text;

  const ReuseAbleContainer2({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.w),
      height: 57.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.w),
        border: Border.all(
          width: 1.w,
          color: AppColors.greyColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BigText(
              text: text,
              size: 16.sp,
            ),
            Icon(
              Icons.expand_more_outlined,
              size: 30.w,
            ),
          ],
        ),
      ),
    );
  }
}

//not used
class ReuseAbleContainer22 extends StatefulWidget {
  final String text;

  const ReuseAbleContainer22({Key? key, required this.text}) : super(key: key);

  @override
  State<ReuseAbleContainer22> createState() => _ReuseAbleContainer22State();
}

//not used
class _ReuseAbleContainer22State extends State<ReuseAbleContainer22> {
  String dropdownValue = "Choose Currency";
  String dropdownValue1 = "Choose Currency";
  List<String> currnecy = <String>["Choose Currency", "SUTRAQ", "USD", "NGN"];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.w),
      height: 57.h,
      width: 320.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.w),
        border: Border.all(
          width: 1.w,
          color: AppColors.greyColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BigText(
              text: dropdownValue1,
              size: 16.sp,
            ),
            DropdownButton<String>(
                dropdownColor: AppColors.mainColor,
                iconSize: 28,
                value: dropdownValue,
                items: currnecy.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (String? val) {
                  setState(() {
                    dropdownValue = val!;
                  });
                }),
          ],
        ),
      ),
    );
  }
}

//notUsed
class ReuseAbleContainer1 extends StatelessWidget {
  final String text;
  const ReuseAbleContainer1({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.w),
      height: 61.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.w),
        border: Border.all(
          width: 1.w,
          color: AppColors.greyColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: BigText(
          text: text,
          size: 16.sp,
        ),
      ),
    );
  }
}

//not used
class ReuseAbleContainer11 extends StatelessWidget {
  final String text;
  const ReuseAbleContainer11({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.w),
      height: 61.h,
      width: 320.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.w),
        border: Border.all(
          width: 1.w,
          color: AppColors.greyColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: BigText(
          text: text,
          size: 16.sp,
        ),
      ),
    );
  }
}

//used
class ReuseableTextFiled extends StatelessWidget {
  final String hinText;
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  const ReuseableTextFiled(
      {Key? key, required this.hinText, this.prefixIcon, this.sufixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.w,
          color: AppColors.greyColor,
        ),
        shape: BoxShape.rectangle,
      ),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: sufixIcon,
          prefixIcon: prefixIcon,
          hintText: hinText,
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
    );
  }
}

//used
class ReuseableTextFiled1 extends StatelessWidget {
  final String hinText;
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  const ReuseableTextFiled1(
      {Key? key, required this.hinText, this.prefixIcon, this.sufixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.h,
      width: 320.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.greyColor,
          width: 1.w,
        ),
        shape: BoxShape.rectangle,
      ),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: sufixIcon,
          prefixIcon: prefixIcon,
          hintText: hinText,
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
    );
  }
}

class ReuseAbleContainer extends StatelessWidget {
  final String text;
  final IconData? icon1;
  final Widget? icon;
  final Color? textColor;
  final double? textSize;

  const ReuseAbleContainer({
    Key? key,
    required this.text,
    this.icon1,
    this.icon,
    this.textColor = AppColors.blackColor,
    this.textSize = 14.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.w),
      height: 57.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.w),
        border: Border.all(
          width: 1.w,
          color: AppColors.greyColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon1,
                  size: 30.w,
                  color: AppColors.mainColor,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: textSize,
                    fontWeight: FontWeight.w500,
                    color: textColor,
                  ),
                )
              ],
            ),
            Container(
              child: icon,
            )
          ],
        ),
      ),
    );
  }
}

class ReuseContainerTextField extends StatelessWidget {
  const ReuseContainerTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.h,
      width: 300.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.r),
          border: Border.all(
            color: AppColors.greyColor.withOpacity(.5),
            width: 1.w,
          )),
      child: Row(
        children: [
          SizedBox(
            width: 15.w,
          ),
          ReusePin2TextFleld(),
          SizedBox(
            width: 20.w,
          ),
          ReusePin2TextFleld(),
          SizedBox(
            width: 20.w,
          ),
          ReusePin2TextFleld(),
          SizedBox(
            width: 20.w,
          ),
          ReusePin2TextFleld(),
        ],
      ),
    );
  }
}

class ReuseContainerPassWordTextFeild extends StatelessWidget {
  const ReuseContainerPassWordTextFeild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.h,
      width: 300.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.r),
          border: Border.all(
            color: AppColors.greyColor.withOpacity(.5),
            width: 1.w,
          )),
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: AppColors.greyColor.withOpacity(0.5),
            width: 1.w,
          )),
          labelText: "",
        ),
      ),
    );
  }
}
