

import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class CounterController extends GetxController {
  // reactive style
  // RxInt counter = 0.obs;
  // int counter1 =0;

  // void incrementCounter() {
  //   // BISA PAKE BAWAAN RX
  //   counter++;
  //   // atau bisa pake value
  //   // counter.value++;
  // }

  // simple style

  var counter = 0;

  void incrementCounter() {
    counter++;
    update();
  }

}