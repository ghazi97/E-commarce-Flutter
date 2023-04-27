import 'package:ecommarce/controller/auth/login_controller.dart';
import 'package:ecommarce/core/constant/color.dart';
import 'package:ecommarce/core/functions/alertexitapp.dart';
import 'package:ecommarce/core/functions/validinput.dart';
import 'package:ecommarce/view/screen/auth/custombuttomauth.dart';
import 'package:ecommarce/view/screen/auth/customtextbodyauth.dart';
import 'package:ecommarce/view/screen/auth/logoauth.dart';
import 'package:ecommarce/view/screen/auth/textsignup.dart';
import 'package:ecommarce/view/widget/auth/customtextformauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/auth/customtexttitleauth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
          title: Text('9'.tr,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.grey)),
        ),
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formstate,
              child: ListView(children: [
                const LogoAuth(),
                CustomTextTitleAuth(text: "10".tr),
                const SizedBox(height: 10),
                CustomTextBodyAuth(text: "11".tr),
                const SizedBox(height: 15),
                CustomTextFormAuth(
                  isNumber: false,
                  vaild: (val) {
                    return validInput(val!, 5, 100, "email");
                  },
                  mycontroller: controller.email,
                  hinttext: "12".tr,
                  labeltext: "18".tr,
                  iconData: Icons.email_outlined,
                ),
                GetBuilder<LoginControllerImp>(
                  builder: (controller) => CustomTextFormAuth(
                    obscureText: controller.isshowpassword,
                    onTapIcon: () {
                      controller.showPassword();
                    },
                    isNumber: false,
                    vaild: (val) {
                      return validInput(val!, 5, 30, "password");
                    },
                    mycontroller: controller.password,
                    hinttext: "13".tr,
                    labeltext: "19".tr,
                    iconData: Icons.lock_outlined,
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.goToForgetPassword();
                  },
                  child: Text(
                    "14".tr,
                    textAlign: TextAlign.end,
                  ),
                ),
                CustomButtonAuth(
                    text: "15".tr,
                    onPressed: () {
                      controller.login();
                    }),
                const SizedBox(height: 30),
                CustomSignUpOrSignIn(
                  textone: "16".tr,
                  texttwo: "17".tr,
                  onTap: () {
                    controller.goToSignUp();
                  },
                )
              ]),
            ),
          ),
        ));
  }
}
