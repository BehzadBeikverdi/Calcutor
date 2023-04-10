import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

import '../../core/themes/font_size.dart';
import '../../core/themes/theme_colors.dart';
import '../pages/simple_calculator/simple_calculator_logic.dart';

Widget numpad(BuildContext context, String number) {
  final Computing computing = Get.put(Computing());
  return Theme(
    data: ThemeData(splashColor: Colors.black87),
    child: InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: () {
        computing.number9();
        print("tapped");
      },
      child: Container(
          width: MediaQuery.of(context).size.width * .15,
          height: MediaQuery.of(context).size.height * .08,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: forthColor.withOpacity(.7),
          ),
          child: Center(
            child: Text(
              number,
              style: TextStyle(
                  fontSize: numberSize,
                  fontWeight: FontWeight.w400),
            ),
          )),
    ),
  );
}