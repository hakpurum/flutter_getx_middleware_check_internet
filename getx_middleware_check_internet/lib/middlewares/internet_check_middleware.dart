import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../routes.dart';

class InternetCheckMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    InternetConnectionChecker().hasConnection.then((value) {
      if (!value) {
        Get.offAndToNamed(Routes.noInternet);
      }
    });
    return null;
  }
}
