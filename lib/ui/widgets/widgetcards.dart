import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/widgets/small_text.dart';

import 'icons.dart';

Widget SettingsCard(text) {
  return Card(
    child: ListTile(
      leading: SmallText(
        text: text,
        color: AppColors.blackColor,
      ),
      trailing: AccountschevronIcon(),
    ),
  );
}

Widget SettingscupertinoCard(text, Widget widget) {
  return Card(
    child: ListTile(
      leading: SmallText(
        text: text,
        color: AppColors.blackColor,
      ),
      trailing: widget,
    ),
  );
}

Widget CardtransferSummary(
    String titleText, String subTitleText, IconData icon) {
  return Card(
    elevation: 0.5,
    child: ListTile(
      title: Text(
        titleText,
        style: TextStyle(
            fontSize: 11.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xFF969696)),
      ),
      subtitle: Text(
        subTitleText,
        style: TextStyle(
            fontFamily: "DMSans",
            fontSize: 17.sp,
            fontWeight: FontWeight.w700,
            color: Color(0xFF000000)),
      ),
      trailing: Icon(
        icon,
        size: 25.w,
        color: AppColors.mainColor,
      ),
    ),
  );
}
