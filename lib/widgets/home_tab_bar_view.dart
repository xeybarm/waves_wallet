import 'package:flutter/material.dart';
import 'package:ge_task/constants/colors.dart';
import 'package:ge_task/constants/texts.dart';
import 'package:ge_task/widgets/tokens_tab_bar.dart';

class HomeTabBar extends StatefulWidget {
  const HomeTabBar({Key? key}) : super(key: key);

  @override
  State<HomeTabBar> createState() => HomeTabBarState();
}

class HomeTabBarState extends State<HomeTabBar>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          _HomeTabBarViewTitleWidget(tabController: _tabController),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                TokensTabBar(),
                _LeasingTabBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _HomeTabBarViewTitleWidget extends StatelessWidget {
  final TabController? tabController;
  const _HomeTabBarViewTitleWidget({Key? key, required this.tabController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TabBar(
        unselectedLabelColor: AppColors.greyColor,
        labelColor: Colors.black,
        tabs: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Tab(
              text: AppTexts.tokens,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(right: 15),
              child: Tab(
                text: AppTexts.leasing,
              )),
        ],
        controller: tabController,
        isScrollable: true,
        labelPadding: EdgeInsets.zero,
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(color: AppColors.primaryColor, width: 2),
          insets: EdgeInsets.fromLTRB(0, 0, 50, 9),
        ),
      ),
    );
  }
}

class _LeasingTabBar extends StatelessWidget {
  const _LeasingTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        AppTexts.leasing,
      ),
    );
  }
}
