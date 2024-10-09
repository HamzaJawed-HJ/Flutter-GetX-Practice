import 'dart:async';

import 'package:get/get.dart';

class IncrementController extends GetxController {
  RxInt counter = 0.obs;

  late Timer timer;

  void incrementCounter() {
    counter.value++;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    //when application start onInit function called
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      incrementCounter();
    });

    //when rendring UI OnReady function called
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();

    timer.cancel();

    //added logout functionality in Onclose function
  }
}
