import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

class CounterExample extends StatelessWidget {
  const CounterExample({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController counter = Get.put(CounterController());

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: Center(
            child: Text("Getx Counter Example"),
          ),
        ),
        body: Center(
          child: Obx(
            () => Text(
              counter.count.toString(),
              style: TextStyle(fontSize: 60),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            onPressed: () {
              counter.incrementCount();
            },
            child: Icon(
              Icons.add,
              size: 30,
            )),
      ),
    );
  }
}
