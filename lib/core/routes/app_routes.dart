import 'package:calcutor/presentation/pages/simple_calculator/simple_calculator_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../presentation/pages/splash/splash_view.dart';

appRoutes() => [
  GetPage(
    name: '/',
    page: () => const SplashView(),
    transition: Transition.cupertino,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/simpleCalculator',
    page: () => const SimpleCalculator(),
    middlewares: [Middleware()],
    transition: Transition.circularReveal,
    transitionDuration: const Duration(milliseconds: 500),
  ),
];

class Middleware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}