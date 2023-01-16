import 'package:cashee/themer/cashee_typography.dart';
import 'package:get/get.dart';

class Themer {
  static CasheeTypography get casheeTypography {
    //todo add tablet theme
    if (Get.context?.isPhone == false) {
      return CasheeTypography.mobileTextTheme;
    }
    return CasheeTypography.mobileTextTheme;
  }
}
