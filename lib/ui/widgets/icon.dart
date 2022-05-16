import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconUnique extends StatelessWidget {
  double height;
  double width;
  double top;
  Widget widget;
  IconUnique(
      {required this.widget,
      required this.height,
      required this.width,
      required this.top});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: top,
      ),
      height: height,
      width: width,
      child: widget,
    );
  }
}
