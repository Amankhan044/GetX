import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/switch_controller.dart';
import 'package:get/get.dart';

class SwitchExample extends StatelessWidget {
  const SwitchExample({super.key});

  @override
  Widget build(BuildContext context) {
    final SwitchController switchController = Get.put(SwitchController());
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Center(
          child: Text('Getx Switch Example'),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Notifications'),
          Obx(() => Switch(
              value: switchController.notification.value,
              onChanged: (value) {
                switchController.setNotification(value);
              }))
        ],
      ),
    ));
  }
}
