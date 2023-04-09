import 'dart:async';

import 'package:calcutor/core/routes/app_routes.dart';
import 'package:calcutor/core/themes/font_size.dart';
import 'package:calcutor/presentation/pages/simple_calculator/simple_calculator_view.dart';
import 'package:calcutor/presentation/pages/splash/splash_logic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../../../core/themes/theme_colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SplashController splashController = Get.put(SplashController());
    splashController.onInit();
    return SafeArea(child: Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: thirdColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/json/calculator.json', width: MediaQuery.of(context).size.width * .5, height: MediaQuery.of(context).size.height * .5,),
            const Text("Calcutor", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),)
          ],
        ),
      )
    ));
  }
}

