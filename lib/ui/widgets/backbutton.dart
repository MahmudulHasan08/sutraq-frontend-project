import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';

class BackButton extends StatelessWidget {
  const BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 10),
      child: Row(
        children: [
          InkWell(
            onTap: () => Get.back(),
            child: Container(
              margin: EdgeInsets.only(right: 45),
              height: 33,
              width: 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34),
                color: AppColors.mainColor,
              ),
              child: Icon(
                Icons.arrow_back_outlined,
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
