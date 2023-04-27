import 'package:ecommarce/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkemail();
  goToVerfiyCode();
  validateEmail();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;

  @override
  checkemail() {}

  @override
  goToVerfiyCode() {
    var formData = formstate.currentState;
    if (formData!.validate()) {
      Get.offNamed(AppRoute.verfiyCode);
    } else {
      print("Not valid");
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  validateEmail() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valid");
    } else {
      print("Not Valid");
    }
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
