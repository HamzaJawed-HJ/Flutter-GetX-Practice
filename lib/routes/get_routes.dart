import 'package:flutter_getx_practice/routes/app_routes.dart';
import 'package:flutter_getx_practice/screens/home_page.dart';
import 'package:flutter_getx_practice/screens/second_page.dart';
import 'package:get/get.dart';

class GetAppRoutes {
  static List<GetPage> getRoute() {
    return [
      GetPage(
        name: AppRoutes.initialRoute,
        page: () => MyHomePage(title: "home Screen"),
      ),
      GetPage(
        name: AppRoutes.secondRoute,
        page: () => const SecondPage(),
      )
    ];
  }
}
