import 'package:flutter/material.dart';
import 'package:ge_task/constants/assets.dart';
import 'package:ge_task/constants/colors.dart';
import 'package:ge_task/constants/styles.dart';
import 'package:ge_task/constants/texts.dart';
import 'package:ge_task/widgets/token_item.dart';
import 'package:sizer/sizer.dart';

class TokensTabBar extends StatelessWidget {
  const TokensTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SearchBarAndSortWidget(),
        SizedBox(height: 2.h),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: tokenItems.length,
              itemBuilder: (BuildContext context, int index) =>
                  TokenItem(index: index)),
        ),
      ],
    );
  }
}

class _SearchBarAndSortWidget extends StatelessWidget {
  const _SearchBarAndSortWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 80.w,
          height: 40,
          decoration: BoxDecoration(
              color: AppColors.searchBarColor,
              borderRadius: BorderRadius.circular(10)),
          child: const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColors.offWhiteColor,
                ),
                hintText: AppTexts.search,
                hintStyle: TextStyle(color: AppColors.offWhiteColor),
                border: InputBorder.none),
          ),
        ),
        SizedBox(width: 4.w),
        Image.asset(
          AppAssets.sortIcon,
          height: 18,
          color: AppColors.greyColor,
        ),
      ],
    );
  }
}

class HiddenAndSusTokensWidget extends StatelessWidget {
  const HiddenAndSusTokensWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5, top: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTexts.hiddenToken,
            style: AppStyles.titleStyle,
          ),
          SizedBox(height: 3.h),
          Text(
            AppTexts.susToken,
            style: AppStyles.titleStyle,
          ),
        ],
      ),
    );
  }
}
