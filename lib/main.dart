import 'package:flutter/material.dart';
import 'package:flutter_getx_practice/routes/app_routes.dart';
import 'package:flutter_getx_practice/routes/get_routes.dart';
import 'package:flutter_getx_practice/screens/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: GetAppRoutes.getRoute(),
      initialRoute: AppRoutes.initialRoute,
    );
  }
}
