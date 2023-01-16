import 'dart:math';
import 'dart:ui';

import 'package:cashee/controllers/teen/home/teen_home_controller.dart';
import 'package:cashee/models/transaction/transaction.dart';
import 'package:cashee/services/clippers.dart';
import 'package:cashee/themer/pallete.dart';
import 'package:cashee/themer/themer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TransactionHistorySection extends StatefulWidget {
  final ScrollController transactionHistoryController;

  const TransactionHistorySection({
    Key? key,
    required this.transactionHistoryController,
  }) : super(key: key);

  @override
  State<TransactionHistorySection> createState() => _TransactionHistorySectionState();
}

class _TransactionHistorySectionState extends State<TransactionHistorySection> {
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60),
      child: ListView(
        physics: const ClampingScrollPhysics(),
        controller: widget.transactionHistoryController,
        children: [
          Container(
            width: Get.width,
            height: TeenHomeController.bodyHeight,
            constraints: BoxConstraints(maxHeight: Get.height - 200),
          ),
          GetX<TeenHomeController>(builder: (controller){
            double availableOffset = TeenHomeController.cardAreaTotalHeight;
            double percentAvailableOffset = controller.scrollPixels.value / availableOffset;
            _opacity = 1 - (percentAvailableOffset * 2);
            return  Opacity(
             opacity:  max(0.0, min(1.0, _opacity)),
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 0,
                ),
                child: ClipPath(
                  clipper: TopCurveClipper(),
                  child: Container(
                    height: TeenHomeController.transactionHistoryGradientHeight,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
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
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
          Container(
            width: Get.width,
            color: Pallete.core02,
            child: Column(
              children: transactions.map((Map<String, dynamic> data) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 8.0),
                        child: Row(
                          children: [
                            Text(
                              DateFormat("MMMM dd").format(data["date"]),
                              style: Themer.casheeTypography.body1.copyWith(
                                color: Pallete.text2,
                              ),
                            ),
                            const Expanded(child: SizedBox.shrink()),
                            if (data == transactions.first)
                              Row(
                                children: [
                                  Image.asset(
                                    'lib/assets/icons/analytics.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Image.asset(
                                    'lib/assets/icons/search.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                      ...data["transactions"].map((Transaction trans) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Pallete.bg1,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                          margin: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 44,
                                width: 44,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(trans.imagePath!),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Title
                                  if (trans.title != null)
                                    Text(
                                      trans.title!,
                                      style: Themer.casheeTypography.body1.copyWith(
                                        color: Pallete.text1,
                                      ),
                                    ),
                                  // subtitle
                                  if (trans.subTitle != null)
                                    Text(
                                      trans.subTitle!,
                                      style: Themer.casheeTypography.captionS.copyWith(
                                        color: Pallete.text2,
                                      ),
                                    ),
                                ],
                              ),
                              Expanded(child: Container()),
                              Text(
                                '${trans.amount}',
                                style: Themer.casheeTypography.transactionAmount.copyWith(
                                  color: trans.amount! > 0 ? Pallete.text5 : Pallete.text1,
                                ),
                              )
                            ],
                          ),
                        );
                      })
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            width: Get.width,
            height: 120,
          ),
        ],
      ),
    );
  }
}
