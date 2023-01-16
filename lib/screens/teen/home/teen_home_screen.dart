import 'package:cashee/controllers/teen/home/teen_home_controller.dart';
import 'package:cashee/screens/teen/home/footer_section.dart';
import 'package:cashee/screens/teen/home/gradient_section.dart';
import 'package:cashee/screens/teen/home/transaction_history_section.dart';
import 'package:cashee/screens/teen/home/wallet_section.dart';
import 'package:cashee/themer/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class TeenHomeScreen extends StatefulWidget {
  const TeenHomeScreen({Key? key}) : super(key: key);

  @override
  State<TeenHomeScreen> createState() => _TeenHomeScreenState();
}

class _TeenHomeScreenState extends State<TeenHomeScreen> {
  final ScrollController transactionHistoryController = ScrollController();

  @override
  void initState() {
    super.initState();

    Get.put(TeenHomeController());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Pallete.bg0,
        // backgroundColor: Colors.red,
        body: NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification notification) {
            double currentOffset = notification.metrics.pixels;
            Get.find<TeenHomeController>().updateScrollPixels(pixels: currentOffset);


            // Auto Scroll logic
            if (notification is ScrollEndNotification) {
              if (transactionHistoryController.position.userScrollDirection ==
                      ScrollDirection.reverse &&
                  currentOffset > 50 &&
                  currentOffset < TeenHomeController.cardAreaTotalHeight) {
                Future.delayed(const Duration(microseconds: 1)).then((value) {
                  transactionHistoryController.animateTo(
                    TeenHomeController.cardAreaTotalHeight,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                });
              } else if (transactionHistoryController.position.userScrollDirection ==
                      ScrollDirection.forward &&
                  currentOffset < TeenHomeController.cardAreaTotalHeight) {
                Future.delayed(const Duration(microseconds: 1)).then((value) {
                  transactionHistoryController.animateTo(
                    0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                });
              }
            }

            return false;
          },
          child: Stack(
            children: [
              const GradientSection(),
              const WalletSection(),
              TransactionHistorySection(
                transactionHistoryController: transactionHistoryController,
              ),
              const FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
