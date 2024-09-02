import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text('GetX')),
      ),
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Get.snackbar("GetX", "GetMaterialApp & Utils",
              backgroundColor: Colors.yellow.shade700,
              snackPosition: SnackPosition.BOTTOM,
              icon: Icon(Icons.add));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
