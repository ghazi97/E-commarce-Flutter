import 'package:ecommarce/controller/auth/ResetPassword_controller.dart';
import 'package:ecommarce/core/constant/color.dart';
import 'package:ecommarce/core/functions/validinput.dart';
import 'package:ecommarce/view/screen/auth/custombuttomauth.dart';
import 'package:ecommarce/view/screen/auth/customtextbodyauth.dart';
import 'package:ecommarce/view/widget/auth/customtextformauth.dart';
import 'package:ecommarce/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('42'.tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(children: [
            CustomTextTitleAuth(text: "35".tr),
            const SizedBox(height: 10),
            CustomTextBodyAuth(text: "34".tr),
            const SizedBox(height: 15),
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
            CustomTextFormAuth(
              isNumber: false,
              vaild: (val) {
                return validInput(val!, 5, 30, "password");
              },
              mycontroller: controller.repassword,
              hinttext: "44".tr,
              labeltext: "43".tr,
              iconData: Icons.lock_outlined,
            ),
            CustomButtonAuth(
                text: "33".tr,
                onPressed: () {
                  controller.goToSuccessResetPassword();
                }),
            const SizedBox(height: 40),
          ]),
        ),
      ),
    );
  }
}
