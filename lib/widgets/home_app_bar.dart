import 'package:flutter/material.dart';
import 'package:ge_task/constants/assets.dart';
import 'package:sizer/sizer.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: const [
        _ProfileIcon(),
      ],
      leading: const _NotificationIcon(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ProfileIcon extends StatelessWidget {
  const _ProfileIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.w),
      child: CircleAvatar(
        radius: 15,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(AppAssets.profilePicture),
        ),
      ),
    );
  }
}

class _NotificationIcon extends StatelessWidget {
  const _NotificationIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.6,
      child: IconButton(
        onPressed: () {},
        icon: Image.asset(AppAssets.notification),
      ),
    );
  }
}
