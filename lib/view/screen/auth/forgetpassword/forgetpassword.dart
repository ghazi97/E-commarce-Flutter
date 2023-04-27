import 'package:ecommarce/controller/auth/forgetpassword_controller.dart';
import 'package:ecommarce/core/constant/color.dart';
import 'package:ecommarce/core/functions/validinput.dart';
import 'package:ecommarce/view/screen/auth/custombuttomauth.dart';
import 'package:ecommarce/view/screen/auth/customtextbodyauth.dart';
import 'package:ecommarce/view/widget/auth/customtextformauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widget/auth/customtexttitleauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('14'.tr,
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
            CustomTextTitleAuth(text: "27".tr),
            const SizedBox(height: 10),
            CustomTextBodyAuth(text: "29".tr),
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
            CustomButtonAuth(
                text: "30".tr,
                onPressed: () {
                  controller.goToVerfiyCode();
                }),
            const SizedBox(height: 40),
          ]),
        ),
      ),
    );
  }
}
