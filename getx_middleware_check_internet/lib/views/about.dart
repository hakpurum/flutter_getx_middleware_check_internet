import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Page"),
      ),
      body: const SafeArea(
        child: Center(child: Text("Welcome to About Page")),
      ),
    );
  }
}
