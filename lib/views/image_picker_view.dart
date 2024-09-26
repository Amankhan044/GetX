import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/image_picker_controller.dart';
import 'package:get/get.dart';

class ImagePicker extends StatelessWidget {
  ImagePicker({super.key});

  final ImagePickerController imagePickerController =
      Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text("Image Picker")),
      ),
      body: Obx(() {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 100,
                  backgroundImage: imagePickerController.image.isNotEmpty
                      ? FileImage(File(imagePickerController.image.toString()))
                      : null),
              TextButton(
                  onPressed: () {
                    imagePickerController.getImage();
                  },
                  child: Text("Pick Image"))
            ],
          ),
        );
      }),
    );
  }
}
