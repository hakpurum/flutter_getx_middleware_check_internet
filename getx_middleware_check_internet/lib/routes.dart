import 'package:get/get.dart';
import 'package:getx_middleware_check_internet/views/about.dart';
import 'package:getx_middleware_check_internet/views/home.dart';

import 'controllers/about_controller.dart';
import 'controllers/home_controller.dart';
import 'middlewares/internet_check_middleware.dart';
import 'views/network_error.dart';

class Routes {
  static const String noInternet = '/noInternet';
  static const String home = '/home';
  static const String about = '/about';

  static List<GetPage> pages = [
    GetPage(
      name: noInternet,
      page: () => const NetworkErrorView(),
    ),
    GetPage(
      name: home,
      page: () => const HomeView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => HomeController());
      }),
      middlewares: [InternetCheckMiddleware()],
    ),
    GetPage(
      name: about,
      page: () => const AboutView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => AboutController());
      }),
      middlewares: [InternetCheckMiddleware()],
    ),
  ];
}
