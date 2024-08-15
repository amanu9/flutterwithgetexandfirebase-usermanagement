import 'package:flutterwithfirebase/src/features/post.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../repository/authentication_repository.dart';

class OtpController extends GetxController {
  static OtpController get instance => Get.find();

  void verifyOtp(String otp) async {
    bool isVerified = await AuthenticationRepository.instance.verifyOtp(otp);
    if (isVerified) {
      Get.offAll(HomePage());
    } else {
      Get.back();
    }
  }
}