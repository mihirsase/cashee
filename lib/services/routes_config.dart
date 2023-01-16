import 'package:cashee/screens/auth/login_screen.dart';
import 'package:cashee/screens/auth/parent_signup_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';


/// Routes name to directly navigate the route by its name
class Routes {
  static String login = "/auth/login";
  static String parentSignup = "/auth/parent/parent_signup";
  static String teenSignup = "/auth/teen/teen_signup";
  static String parentOnboarding1 = "/onboarding/parent/parent_onboarding_step1";
  static String teenOnboarding1 = "/onboarding/teen/teen_onboarding_step1";
  static String parentHistory = "/parent/history";
  static String parentTips = "/parent/tips";
  static String parentHome = "/parent/home";
  static String teenHome = "/teen/home";
  static String teenEducation = "/teen/education";
  static String teenHub = "/teen/hub";
}

final getPages = [
  GetPage(
    name: Routes.login,
    page: () => const LoginScreen(),
  ),
  GetPage(
    name: Routes.parentSignup,
    page: () => const ParentSignupScreen(),
  ),
];

