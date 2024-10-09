import 'package:flutter/material.dart';
import 'package:flutter_getx_practice/controller/increment_controller.dart';
import 'package:flutter_getx_practice/routes/app_routes.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  IncrementController controller = Get.put(IncrementController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(
              () {
                return Text(
                  ' Counter Value ${controller.counter.value}',
                  // '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoutes.secondRoute);
              },
              child: Text("Second Page"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "Dialog Box ",
                  textConfirm: "yes",
                  textCancel: "No",
                );
              },
              child: Text("Dialog Box"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //  controller.incrementCounter();

          Get.delete<IncrementController>();
        },
        // _incrementCounter,
        // tooltip: ,
        child: Text('Stop'),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
