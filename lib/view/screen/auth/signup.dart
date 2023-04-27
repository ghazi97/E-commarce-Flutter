import 'package:ecommarce/controller/auth/signup_controller.dart';
import 'package:ecommarce/core/constant/color.dart';
import 'package:ecommarce/core/functions/alertexitapp.dart';
import 'package:ecommarce/core/functions/validinput.dart';
import 'package:ecommarce/view/screen/auth/custombuttomauth.dart';
import 'package:ecommarce/view/screen/auth/customtextbodyauth.dart';
import 'package:ecommarce/view/screen/auth/textsignup.dart';
import 'package:ecommarce/view/widget/auth/customtextformauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/auth/customtexttitleauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
          title: Text('17'.tr,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.grey)),
        ),
        body: GetBuilder<SignUpControllerImp>(
            builder: (controller) => WillPopScope(
                  onWillPop: alertExitApp,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    child: Form(
                      key: controller.formstate,
                      child: ListView(children: [
                        CustomTextTitleAuth(text: "10".tr),
                        const SizedBox(height: 10),
                        CustomTextBodyAuth(text: "24".tr),
                        const SizedBox(height: 15),
                        CustomTextFormAuth(
                          isNumber: false,
                          vaild: (val) {
                            return validInput(val!, 2, 100, "username");
                          },
                          mycontroller: controller.username,
                          hinttext: "23".tr,
                          labeltext: "20".tr,
                          iconData: Icons.person_outline,
                        ),
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
                        CustomTextFormAuth(
                          isNumber: true,
                          vaild: (val) {
                            return validInput(val!, 10, 25, "phone");
                          },
                          mycontroller: controller.phone,
                          hinttext: "22".tr,
                          labeltext: "21".tr,
                          iconData: Icons.phone_android_outlined,
                        ),
                        CustomTextFormAuth(
                          isNumber: false,
                          vaild: (val) {
                            return validInput(val!, 5, 30, "password");
                          },
                          mycontroller: controller.password,
                          hinttext: "13".tr,
                          labeltext: "19".tr,
                          iconData: Icons.lock_outlined,
                        ),
                        CustomButtonAuth(
                            text: "17".tr,
                            onPressed: () {
                              controller.signUp();
                            }),
                        const SizedBox(height: 30),
                        CustomSignUpOrSignIn(
                          textone: "25".tr,
                          texttwo: "9".tr,
                          onTap: () {
                            controller.goToSignIn();
                          },
                        ),
                      ]),
                    ),
                  ),
                )));
  }
}
