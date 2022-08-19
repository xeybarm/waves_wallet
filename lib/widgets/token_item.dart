import 'package:flutter/material.dart';
import 'package:ge_task/constants/assets.dart';
import 'package:ge_task/constants/styles.dart';
import 'package:ge_task/constants/texts.dart';
import 'package:ge_task/models/token_model.dart';
import 'package:ge_task/widgets/tokens_tab_bar.dart';

//dummy list of tokens
List<TokenModel> tokenItems = const [
  TokenModel(
      tokenImage: AppAssets.token1,
      tokenTitle: AppTexts.waves,
      tokenAmount: 5.0054,
      tokenType: TokenType.check,
      tokenSubtext: AppTexts.heart),
  TokenModel(
      tokenImage: AppAssets.token2,
      tokenTitle: AppTexts.pigeon,
      tokenAmount: 1444.04556321,
      tokenType: TokenType.brackets,
      tokenSubtext: AppTexts.myToken),
  TokenModel(
      tokenImage: AppAssets.token3,
      tokenTitle: AppTexts.usDollar,
      tokenAmount: 199.24,
      tokenType: TokenType.check,
      tokenSubtext: ''),
];

class TokenItem extends StatelessWidget {
  final int index;
  const TokenItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
            child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Stack(
                      children: <Widget>[
                        Image.asset(
                          tokenItems[index].tokenImage,
                          height: 38,
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              width: 13,
                              height: 13,
                              child: Padding(
                                padding: const EdgeInsets.all(1.5),
                                child: Image.asset(
                                  tokenItems[index].tokenType == TokenType.check
                                      ? AppAssets.checkIcon
                                      : AppAssets.bracketsIcon,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              tokenItems[index].tokenTitle,
                              style: AppStyles.titleStyle,
                            ),
                            Text(
                              tokenItems[index].tokenSubtext,
                              style: index == 0
                                  ? AppStyles.subtextStyle1
                                  : AppStyles.subtextStyle2,
                            ),
                          ],
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: tokenItems[index]
                                  .tokenAmount
                                  .toString()
                                  .split('.')[0],
                              style: AppStyles.subtitleStyleBold),
                          TextSpan(
                              text: '.', style: AppStyles.subtitleStyleRegular),
                          TextSpan(
                              text: tokenItems[index]
                                  .tokenAmount
                                  .toString()
                                  .split('.')[1],
                              style: AppStyles.subtitleStyleRegular)
                        ])),
                      ],
                    )
                  ],
                ))),
        index == tokenItems.length - 1
            ? const HiddenAndSusTokensWidget()
            : const SizedBox(),
      ],
    );
  }
}
