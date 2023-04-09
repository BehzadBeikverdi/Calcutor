import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

late final ValueSetter<int> onTextInput;

class Computing extends GetxController {
  number9() {
    onTextInput.call(9);
  }
}