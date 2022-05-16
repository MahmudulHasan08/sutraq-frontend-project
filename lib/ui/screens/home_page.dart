import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/screens/identityScreen/login_page.dart';
import 'package:sutraq/ui/widgets/button.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController(viewportFraction: 1);
  var currentPageValue = 0.0;
  List images = [
    "assets/images/homesliderimg1.png",
    "assets/images/homesliderimg2.jpg",
    "assets/images/homesliderimg3.jpg"
  ];
  List bigText = ["Send Money Anywhere", "Safe & Secure", "Unbeatable Support"];
  List smallText = [
    "With our unique technology, you can get money anywhere in the world",
    "Safety of your funds is guaranteed. We’ve got you covered 24/7.",
    "Send money to other sutraq users free of charge, with no additional fee."
  ];
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        currentPageValue = _pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 30.h,
              ),
              height: 782.h,
              width: double.maxFinite,
              child: Container(
                height: 420.h,
                width: double.maxFinite,
                child: PageView.builder(
                    controller: _pageController,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return Stack(
                        children: [
                          Positioned(
                            child: Column(
                              children: [
                                Container(
                                  height: 293.h,
                                  width: 300.w,
                                  child: Image(
                                    image: AssetImage(images[index]),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 330.h,
                            left: 150.w,
                            child: DotsIndicator(
                              dotsCount: images.length,
                              position: currentPageValue,
                              decorator: DotsDecorator(
                                activeColor: AppColors.mainColor,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 360.h,
                              width: 393.w,
                              decoration: BoxDecoration(
                                  color: AppColors.mainColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.r),
                                    topRight: Radius.circular(25.r),
                                  )),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 40.h,
                                    left: 30.w,
                                    right: 30.w,
                                    bottom: 20.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        bigText[index],
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 27.sp,
                                          color: AppColors.whiteColor,
                                          fontFamily: "Gelion",
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        smallText[index],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.sp,
                                            color: AppColors.whiteColor,
                                            fontFamily: "Circular Std Font"),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 80.h,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.to(() => LoginPage());
                                      },
                                      child: ReuseableButton(
                                        text: "Login",
                                        color: AppColors.buttonColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text(
                                      "Try Sutraq",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Circular Std Font",
                                        color: AppColors.whiteColor,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
