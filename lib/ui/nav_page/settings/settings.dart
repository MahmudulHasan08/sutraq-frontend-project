import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/account_related/addaccount.dart';
import 'package:sutraq/ui/nav_page/settings/setting_bankaccount/settingsBankAccount.dart';
import 'package:sutraq/ui/nav_page/settings/settingsprofileView.dart';
import 'package:sutraq/ui/widgets/icons.dart';
import 'package:sutraq/ui/widgets/small_text.dart';
import 'package:sutraq/ui/widgets/widgetcards.dart';
import 'package:get/get.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool iscupertinoSwitch = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundSettingsColor,
      body: NestedScrollView(
        physics: NeverScrollableScrollPhysics(),
        headerSliverBuilder: (_, isScolled) {
          return [
            SliverAppBar(
              backgroundColor: AppColors.backgroundSettingsColor,
              automaticallyImplyLeading: false,
              expandedHeight: 140,
              collapsedHeight: 140,
              flexibleSpace: SettingsProfileView(),
            )
          ];
        },
        body: Container(
          height: 520.h,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.r),
              topRight: Radius.circular(15.r),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.r),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: SmallText(
                      text: "General",
                      size: 10.sp,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  InkWell(
                    onTap: () => Get.to(() => SettingsBankAccount()),
                    child: SettingsCard("Bank Accounts"),
                  ),
                  SettingsCard("My Cards"),
                  SettingsCard("Change Transaction Pin"),
                  SettingsCard("Security"),
                  SettingsCard("Documents"),
                  SizedBox(
                    height: 10.h,
                  ),
                  SmallText(text: "Preferences"),
                  SizedBox(
                    height: 5.h,
                  ),
                  SettingsCard("Invite Your Friends"),
                  SettingsCard("Report a Bug"),
                  SizedBox(
                    height: 10.h,
                  ),
                  SmallText(text: "Notifications"),
                  SizedBox(
                    height: 10.h,
                  ),
                  SettingscupertinoCard(
                      "Get real-time updates",
                      CupertinoSwitch(
                          activeColor: AppColors.mainColor,
                          trackColor: AppColors.greyColor,
                          thumbColor: AppColors.whiteColor,
                          value: iscupertinoSwitch,
                          onChanged: (val) {
                            setState(() {
                              iscupertinoSwitch = val;
                            });
                          }))
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
