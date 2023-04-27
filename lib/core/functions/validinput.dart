import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "46".tr;
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "45".tr;
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "48".tr;
    }
  }

  if (val.isEmpty) {
    return "47".tr;
  }

  if (val.length < min) {
    return "49".tr;
  }

  if (val.length > max) {
    return "50".tr;
  }
}
