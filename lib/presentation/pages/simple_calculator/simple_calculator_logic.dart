import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Computing extends GetxController {
  RxString input = "".obs;
  number9() {
    input = "9".obs;
    print(input);
  }
}