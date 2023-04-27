import 'package:ecommarce/core/constant/routes.dart';
import 'package:ecommarce/core/middleware/mymiddleware.dart';
import 'package:ecommarce/test.dart';
import 'package:ecommarce/test_view.dart';
import 'package:ecommarce/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommarce/view/screen/auth/language.dart';
import 'package:ecommarce/view/screen/auth/login.dart';
import 'package:ecommarce/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommarce/view/screen/auth/signup.dart';
import 'package:ecommarce/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:ecommarce/view/screen/auth/success_signup.dart';
import 'package:ecommarce/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ecommarce/view/screen/auth/verifycodeSignUp.dart';
import 'package:ecommarce/view/screen/onboarding.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  // GetPage(
  //     name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  GetPage(name: "/", page: () => TestView()),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetPassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(
      name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
];
