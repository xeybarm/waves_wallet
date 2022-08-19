import 'package:flutter/material.dart';
import 'package:ge_task/constants/colors.dart';
import 'package:sizer/sizer.dart';

abstract class AppStyles {
  static final titleStyle = TextStyle(
    color: AppColors.greyColor,
    fontSize: 12.sp,
    height: 1.5,
  );

  static final cardTitleStyle = TextStyle(
    color: AppColors.offWhiteColor,
    fontSize: 12.sp,
    height: 1.5,
  );

  static final headingStyle = TextStyle(
    color: Colors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    height: 1.5,
  );

  static final subtextStyle1 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 12.sp,
    height: 1.5,
  );

  static final subtextStyle2 = TextStyle(
    color: AppColors.greyColor,
    fontSize: 8.sp,
    height: 1.5,
  );

  static final subtitleStyleBold = TextStyle(
    color: Colors.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.bold,
    height: 1.5,
  );

  static final subtitleStyleRegular = TextStyle(
    color: Colors.black,
    fontSize: 12.sp,
    height: 1.5,
  );
}
