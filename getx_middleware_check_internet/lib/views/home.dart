import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_middleware_check_internet/routes.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: SafeArea(
        child: Center(
            child: TextButton(
                onPressed: () => Get.toNamed(Routes.about),
                child: const Text("Go To About"))),
      ),
    );
  }
}
