import 'package:ecommarce/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {
  goToPageLogin();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  goToPageLogin() {
    Get.offAllNamed(AppRoute.login);
    //ليش بنحط أوف أووول نيم عشان ما رح نرجع لهاي الصفحات أبدا
  }
}
