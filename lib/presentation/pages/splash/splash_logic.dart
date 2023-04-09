import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    navigateToNextScreen();
    super.onInit();
  }

  navigateToNextScreen() {
    Timer(const Duration(seconds: 5),
            ()=> Get.offNamed("/simpleCalculator")
    );
  }
}