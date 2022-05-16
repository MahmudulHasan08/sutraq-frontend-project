import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/nav_page/dashboard/sendmoney/pin_success.dart';
import 'package:sutraq/ui/sutraqaccountprocedure/re_enter_pin.dart';
import 'package:sutraq/ui/widgets/big_text.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

class TransactionPin extends StatefulWidget {
  const TransactionPin({Key? key}) : super(key: key);

  @override
  State<TransactionPin> createState() => _TransactionPinState();
}

class _TransactionPinState extends State<TransactionPin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(top: 8.w),
          height: 291.h,
          width: 375.w,
          decoration: BoxDecoration(
            color: Color(0xFFD2D5DB),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: Container(
                      height: 46.h,
                      width: 110.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: AppColors.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 1),
                              color: Color(0xFF848688),
                            )
                          ]),
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(fontSize: 25.sp),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: Container(
                      height: 46.h,
                      width: 110.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: AppColors.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 1),
                              color: Color(0xFF848688),
                            )
                          ]),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              '2',
                              style: TextStyle(fontSize: 25.sp),
                            ),
                            Text(
                              'ABC',
                              style: TextStyle(fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.w,
                    ),
                    child: Container(
                      margin: EdgeInsets.only(right: 8.w),
                      height: 46.h,
                      width: 110.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: AppColors.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 1),
                              color: Color(0xFF848688),
                            )
                          ]),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              '3',
                              style: TextStyle(fontSize: 25.sp),
                            ),
                            Text(
                              'DEF',
                              style: TextStyle(fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: Container(
                      height: 46.h,
                      width: 110.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: AppColors.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 1),
                              color: Color(0xFF848688),
                            )
                          ]),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              '4',
                              style: TextStyle(fontSize: 25.sp),
                            ),
                            Text(
                              'GHI',
                              style: TextStyle(fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: Container(
                      height: 46.h,
                      width: 110.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: AppColors.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 1),
                              color: Color(0xFF848688),
                            )
                          ]),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              '5',
                              style: TextStyle(fontSize: 25.sp),
                            ),
                            Text(
                              'JKL',
                              style: TextStyle(fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.w,
                    ),
                    child: Container(
                      margin: EdgeInsets.only(right: 8.w),
                      height: 46.h,
                      width: 110.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: AppColors.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 1),
                              color: Color(0xFF848688),
                            )
                          ]),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              '6',
                              style: TextStyle(fontSize: 25.sp),
                            ),
                            Text(
                              'MNO',
                              style: TextStyle(fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: Container(
                      height: 46.h,
                      width: 110.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: AppColors.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 1),
                              color: Color(0xFF848688),
                            )
                          ]),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              '7',
                              style: TextStyle(fontSize: 25.sp),
                            ),
                            Text(
                              'PQRS',
                              style: TextStyle(fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: Container(
                      height: 46.h,
                      width: 110.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: AppColors.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 1),
                              color: Color(0xFF848688),
                            )
                          ]),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              '8',
                              style: TextStyle(fontSize: 25.sp),
                            ),
                            Text(
                              'TUV',
                              style: TextStyle(fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.w,
                    ),
                    child: Container(
                      margin: EdgeInsets.only(right: 8.w),
                      height: 46.h,
                      width: 110.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: AppColors.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 1),
                              color: Color(0xFF848688),
                            )
                          ]),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              '9',
                              style: TextStyle(fontSize: 25.sp),
                            ),
                            Text(
                              'WXYZ',
                              style: TextStyle(fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(left: 130.w),
                      child: Container(
                        height: 46.h,
                        width: 110.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: AppColors.whiteColor,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 1),
                                color: Color(0xFF848688),
                              )
                            ]),
                        child: Center(
                          child: Text(
                            '0',
                            style: TextStyle(fontSize: 25.sp),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: InkWell(
                      onTap: () => Get.to(() => PinSuccess()),
                      child: Container(
                        height: 46.h,
                        width: 110.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: AppColors.whiteColor,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 1),
                                blurRadius: 0,
                                color: Color(0xFF848688),
                              )
                            ]),
                        child: Center(
                          child: Text(
                            'x',
                            style: TextStyle(fontSize: 25.sp),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(top: 60),
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
                        child: TextField(
                      decoration: InputDecoration(hintText: "      *"),
                    )),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
