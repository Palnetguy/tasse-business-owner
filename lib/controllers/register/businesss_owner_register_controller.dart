import 'dart:async';

import 'package:get/get.dart';

import '../../screens/onboarding/onboarding.dart';

class BusinessOwnerRegisterController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // Set a timer to navigate to the next screen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Get.offAll(() => const OnBoarding());
    });
  }
}
