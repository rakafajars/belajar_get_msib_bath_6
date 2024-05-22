import 'package:belajar_get_msib/controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  CounterPage({super.key});

  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: GetBuilder<CounterController>(
          builder: (controller) {
            return Text("${controller.counter}");
          },
        ),
      ),

      // body: Center(
      //   child: Column(
      //     children: [
      //       Text('aaa'),
      //       Obx(
      //         () => Text(
      //           "${counterController.counter}",
      //           style: const TextStyle(fontSize: 24),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.incrementCounter();
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
