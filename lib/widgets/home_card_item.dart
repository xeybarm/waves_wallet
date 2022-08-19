import 'package:flutter/material.dart';
import 'package:ge_task/constants/assets.dart';
import 'package:ge_task/constants/colors.dart';
import 'package:ge_task/constants/styles.dart';
import 'package:ge_task/constants/texts.dart';
import 'package:ge_task/models/card_model.dart';
import 'package:sizer/sizer.dart';

//dummy list of items
List<CardModel> cardItems = const [
  CardModel(cardIcon: AppAssets.qrCodeIcon, cardTitle: AppTexts.yourAddress),
  CardModel(cardIcon: AppAssets.profileIcon, cardTitle: AppTexts.aliases),
  CardModel(cardIcon: AppAssets.onOffIcon, cardTitle: AppTexts.balance),
  CardModel(cardIcon: AppAssets.arrowsIcon, cardTitle: AppTexts.resize),
];

class HomeCardItem extends StatelessWidget {
  final int index;
  final int? selectedIndex;
  const HomeCardItem(
      {Key? key, required this.index, required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 33.w,
        child: Card(
            child: Container(
          padding: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            gradient: index == selectedIndex
                ? const LinearGradient(
                    colors: [
                      AppColors.primaryColorLight,
                      AppColors.primaryColor
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )
                : null,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                cardItems[index].cardIcon,
                alignment: Alignment.topLeft,
                height: 25,
                color: index == selectedIndex ? Colors.white : Colors.black,
              ),
              Text(
                cardItems[index].cardTitle,
                style: AppStyles.cardTitleStyle,
              ),
            ],
          ),
        )));
  }
}
