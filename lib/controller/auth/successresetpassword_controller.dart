import 'package:ecommarce/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController {
  goToPageLogin();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  goToPageLogin() {
    Get.offAllNamed(AppRoute.login);
    //ليش بنحط أوف أووول نيم عشان ما رح نرجع لهاي الصفحات أبدا
  }
}
