import 'package:calcutor/core/themes/font_size.dart';
import 'package:calcutor/core/themes/theme_colors.dart';
import 'package:calcutor/presentation/pages/simple_calculator/simple_calculator_logic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widget/custom_icon_button.dart';
import '../../widget/custom_number_numpad.dart';

class SimpleCalculator extends StatelessWidget {
  const SimpleCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Computing computing = Get.put(Computing());
    return SafeArea(
        child: Scaffold(
      backgroundColor: thirdColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                color: Colors.grey.withOpacity(.3),
              ),
              width: MediaQuery.of(context).size.width * 6,
              height: MediaQuery.of(context).size.height * .35,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(() => Text(computing.input.value, style: const TextStyle(fontSize: 50),)),
                    Obx(() => Text(computing.input.value, style: const TextStyle(fontSize: 50),)),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.grey,
            height: .5,
            width: MediaQuery.of(context).size.width * .9,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .59,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: secondaryColor.withOpacity(.1),
                    ),
                    height: MediaQuery.of(context).size.height * .09,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        iconButton(context, TablerIcons.plus, primaryColor),
                        iconButton(context, TablerIcons.minus, primaryColor),
                        iconButton(context, Icons.clear, primaryColor),
                        iconButton(context, TablerIcons.divide, primaryColor),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      numpad(context, "7",),
                      numpad(context, "8",),
                      numpad(context, "9",),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      numpad(context, "4",),
                      numpad(context, "5",),
                      numpad(context, "6",),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      numpad(context, "1",),
                      numpad(context, "2",),
                      numpad(context, "3",),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      numpad(context, ".",),
                      numpad(context, "0",),
                      iconButton(context, TablerIcons.backspace, Colors.amber),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Theme(
                          data: ThemeData(splashColor: Colors.black87),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {},
                            child: Container(
                                width: MediaQuery.of(context).size.width * .15,
                                height: MediaQuery.of(context).size.height * .08,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: forthColor.withOpacity(.7),
                                ),
                                child: const Center(
                                  child: Text(
                                    "ac",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w100),
                                  ),
                                )),
                          ),
                        ),
                        Theme(
                          data: ThemeData(splashColor: Colors.black87),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {},
                            child: Container(
                                width: MediaQuery.of(context).size.width * .15,
                                height: MediaQuery.of(context).size.height * .08,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: forthColor.withOpacity(.7),
                                ),
                                child: const Icon(
                                  size: 40,
                                  TablerIcons.equal,
                                  color: confirmColor,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
