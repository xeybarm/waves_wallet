import 'package:flutter/material.dart';
import 'package:ge_task/constants/assets.dart';
import 'package:ge_task/constants/colors.dart';
import 'package:ge_task/constants/texts.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _navBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _navBarIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: (index) {
        setState(() {
          _navBarIndex = index;
        });
        if (_navBarIndex == 2) {
          _showModalBottomSheet(context);
        }
      },
      items: const [
        BottomNavigationBarItem(
          label: '',
          icon: ImageIcon(
            AssetImage(AppAssets.walletIcon),
            color: AppColors.offWhiteColor,
          ),
          activeIcon: ImageIcon(
            AssetImage(AppAssets.walletIcon),
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: ImageIcon(
            AssetImage(AppAssets.repeatIcon),
            color: AppColors.offWhiteColor,
          ),
          activeIcon: ImageIcon(
            AssetImage(AppAssets.repeatIcon),
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: ImageIcon(
            AssetImage(AppAssets.addIcon),
            color: AppColors.addColor,
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: ImageIcon(
            AssetImage(AppAssets.lineDotsIcon),
            color: AppColors.offWhiteColor,
          ),
          activeIcon: ImageIcon(
            AssetImage(AppAssets.lineDotsIcon),
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: ImageIcon(
            AssetImage(AppAssets.settingsIcon),
            color: AppColors.offWhiteColor,
          ),
          activeIcon: ImageIcon(
            AssetImage(AppAssets.settingsIcon),
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

void _showModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Wrap(
          children: const [
            ListTile(
              leading: ImageIcon(
                AssetImage(AppAssets.arrowUpIcon),
                color: AppColors.sendColor,
                size: 35,
              ),
              title: Text(AppTexts.send),
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage(AppAssets.arrowDownIcon),
                color: AppColors.recieveColor,
                size: 35,
              ),
              title: Text(AppTexts.recieve),
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage(AppAssets.arrowExchangeIcon),
                color: AppColors.primaryColor,
                size: 35,
              ),
              title: Text(AppTexts.exchange),
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage(AppAssets.scanIcon),
                color: AppColors.scanColor,
                size: 40,
              ),
              title: Text(AppTexts.qrScan),
              subtitle: Text(AppTexts.invoceAdresses),
            ),
          ],
        );
      });
}
