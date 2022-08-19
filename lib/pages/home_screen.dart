import 'package:flutter/material.dart';
import 'package:ge_task/constants/colors.dart';
import 'package:ge_task/constants/styles.dart';
import 'package:ge_task/widgets/bottom_nav_bar.dart';
import 'package:ge_task/widgets/home_app_bar.dart';
import 'package:ge_task/widgets/home_card_item.dart';
import 'package:ge_task/widgets/home_tab_bar_view.dart';
import 'package:sizer/sizer.dart';
import '../constants/texts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: const HomeAppBar(),
        bottomNavigationBar: const BottomNavBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: const [
              _HeadingWidget(),
              _CardItemsWidget(),
              HomeTabBar(),
            ],
          ),
        ));
  }
}

class _HeadingWidget extends StatelessWidget {
  const _HeadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 1.w, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTexts.wallet,
            style: AppStyles.titleStyle,
          ),
          Text(
            AppTexts.mobileTeam,
            style: AppStyles.headingStyle,
          ),
        ],
      ),
    );
  }
}

class _CardItemsWidget extends StatefulWidget {
  const _CardItemsWidget({Key? key}) : super(key: key);

  @override
  State<_CardItemsWidget> createState() => _CardItemsWidgetState();
}

class _CardItemsWidgetState extends State<_CardItemsWidget> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 13.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cardItems.length,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: HomeCardItem(index: index, selectedIndex: selectedIndex))),
    );
  }
}
