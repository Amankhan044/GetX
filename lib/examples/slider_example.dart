import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/slider_controller.dart';
import 'package:get/get.dart';

class SliderExample extends StatelessWidget {
  const SliderExample({super.key});

  @override
  Widget build(BuildContext context) {
    final SliderController sliderController = Get.put(SliderController());
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            title: Center(
              child: Text("Getx Slider Example"),
            ),
          ),
          body: Column(
            children: [
              Obx(
                () => Container(
                  height: Get.height * .3,
                  width: Get.width * .4,
                  color: Colors.red.withOpacity(sliderController.opacity.value),
                ),
              ),
              Obx(
                () => Slider(
                    value: sliderController.opacity.value,
                    onChanged: (value) {
                      sliderController.setOpacity(value);
                    }),
              )
            ],
          )),
    );
  }
}
