import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_middleware_check_internet/routes.dart';

class NetworkErrorView extends StatelessWidget {
  const NetworkErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.network_check, color: Colors.red, size: 100),
            const SizedBox(height: 30),
            const Text(
              'Bağlantı hatası !',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey),
            ),
            const SizedBox(height: 10),
            const Text(
              'Lütfen internet bağlantınızı kontrol edip tekrar deneyiniz.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            TextButton(
                onPressed: () => Get.offAndToNamed(Routes.home),
                child: const Text("Tekrar Dene"))
          ],
        ),
      ),
    );
  }
}
