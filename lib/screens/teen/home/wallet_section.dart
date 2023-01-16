import 'dart:math';
import 'dart:ui';

import 'package:cashee/controllers/teen/home/teen_home_controller.dart';
import 'package:cashee/services/clippers.dart';
import 'package:cashee/themer/pallete.dart';
import 'package:cashee/themer/themer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class WalletSection extends StatefulWidget {
  const WalletSection({Key? key}) : super(key: key);

  @override
  State<WalletSection> createState() => _WalletSectionState();
}

class _WalletSectionState extends State<WalletSection> {
  double _amountFontSize = TeenHomeController.cardBalanceMaxSize;
  double _opacity = 1.0;
  double _amountPosition = TeenHomeController.cardBalanceStartPosition;
  double _topGradientPosition = 0;
  double _tabBarPosition = 0;

  @override
  Widget build(BuildContext context) {
    return GetX<TeenHomeController>(
      builder: (controller) {
        double availableOffset = TeenHomeController.cardAreaTotalHeight;
        double percentAvailableOffset = controller.scrollPixels.value / availableOffset;

        _amountFontSize = TeenHomeController.cardBalanceMaxSize -
            ((TeenHomeController.cardBalanceMaxSize - TeenHomeController.cardBalanceMinSize) *
                percentAvailableOffset);

        _opacity = 1 - (percentAvailableOffset * 2);
        _amountPosition = TeenHomeController.cardBalanceStartPosition -
            (TeenHomeController.cardBalanceStartPosition * percentAvailableOffset);

        _topGradientPosition = -(TeenHomeController.topGradientHeight * percentAvailableOffset);
        _tabBarPosition = -(TeenHomeController.tabBarEndPosition * percentAvailableOffset);

        return Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: max(-TeenHomeController.topGradientHeight, min(0, _topGradientPosition)),
              left: 0,
              right: 0,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10,
                ),
                child: ClipPath(
                  clipper: BottomCurveClipper(),
                  child: Container(
                    height: TeenHomeController.topGradientHeight,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Pallete.core02.withOpacity(0.1),
                          Pallete.core02.withOpacity(0.2),
                          Pallete.core02.withOpacity(0.3),
                          Pallete.core02.withOpacity(0.4),
                          Pallete.core02.withOpacity(0.5),
                          Pallete.core02.withOpacity(0.6),
                          Pallete.core02.withOpacity(0.7),
                          Pallete.core02.withOpacity(0.8),
                          Pallete.core02.withOpacity(0.9),
                          Pallete.core02.withOpacity(1),
                          Pallete.core02.withOpacity(1),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: max(-TeenHomeController.tabBarEndPosition, min(0, _tabBarPosition)),
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Opacity(
                  opacity: max(0.0, min(1.0, _opacity)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Spending",
                            style: Themer.casheeTypography.body1Highlight.copyWith(
                              color: Pallete.text1,
                            ),
                          ),
                          const SizedBox(height: 2,),
                          Container(
                            height: 4,
                            width: 4,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Pallete.interactive1,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          Text(
                            "Saving",
                            style: Themer.casheeTypography.body1Highlight.copyWith(
                              color: Pallete.interactive4,
                            ),
                          ),
                          const SizedBox(height: 2,),
                          Container(
                            height: 4,
                            width: 4,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: max(TeenHomeController.cardBalanceEndPosition,
                  min(TeenHomeController.cardBalanceStartPosition, _amountPosition)),
              child: SizedBox(
                width: Get.width,
                height: Get.height,
                child: Column(
                  children: [
                    Opacity(
                      opacity: max(0.0, min(1.0, _opacity)),
                      child: Text(
                        "Card balance, AED",
                        style: Themer.casheeTypography.body2.copyWith(
                          color: Pallete.text3,
                        ),
                      ),
                    ),
                    Text(
                      "1,000.00",
                      style: Themer.casheeTypography.balanceL.copyWith(
                          color: Pallete.text1,
                          fontSize: max(TeenHomeController.cardBalanceMinSize,
                              min(TeenHomeController.cardBalanceMaxSize, _amountFontSize))),
                    ),
                    const SizedBox(height: 12),
                    Opacity(
                      opacity: max(0.0, min(1.0, _opacity)),
                      child: SizedBox(
                        height: 52,
                        width: 220,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Pallete.interactive1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: Text(
                            "Request money",
                            style: Themer.casheeTypography.body1Highlight.copyWith(
                              color: Pallete.interactive1Text,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Opacity(
                      opacity: max(0.0, min(1.0, _opacity)),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset("lib/assets/icons/card.png", width: 252, height: 375),
                          Transform.translate(
                            offset: const Offset(0.0, -60.0),
                            child:
                                Image.asset("lib/assets/icons/bolt.png", width: 120, height: 120),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
