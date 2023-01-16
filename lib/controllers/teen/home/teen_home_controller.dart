import 'package:get/get.dart';

class TeenHomeController extends GetxController {
  var scrollPixels = 0.0.obs;

  // Estimate height of the color gradient calculated using the heights of the circle widgets in the gradient_section.dart
  static const double estimateColorGradientHeight = 280;

  // Color gradient start point
  static final double colorGradientStartOffset = Get.height / 4;

  // Height of the top section excluding the height of the transaction history gradient
  static final double bodyHeight = Get.height * 0.4;

  // Height of transaction history section history black gradient
  static const double transactionHistoryGradientHeight = 150;

  // Total Height of the Card View Area which includes cashee card, balance and appbar and transaction history gradient
  static final double cardAreaTotalHeight = bodyHeight + transactionHistoryGradientHeight;

  // Card balance max font size
  static const double cardBalanceMaxSize = 48;

  // Card balance min font size
  static const double cardBalanceMinSize = 20;

  // Card balance starting point
  static const double cardBalanceStartPosition = 72;

  // Card balance ending point
  static const double cardBalanceEndPosition = 4;

  // Top black gradient height
  static const double topGradientHeight = 236;

  // Tab bar end position
  static const double tabBarEndPosition = 40;

  updateScrollPixels({required double pixels}) {
    scrollPixels.value = pixels;
  }
}
