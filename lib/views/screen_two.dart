import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text('ScreenTwo')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * .2,
            width: width * .8,
            decoration: BoxDecoration(color: Colors.red),
            child: Center(child: Text("Container One")),
          ),
          Container(
            height: Get.height * .2,
            width: Get.width * .8,
            decoration: BoxDecoration(color: Colors.red),
            child: Center(child: Text("Container two")),
          ),
          SizedBox(
            height: 200,
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  // Navigator.pop(context);

                  Get.back();
                  Get.back();
                },
                child: Text("Go Back To HomeScreen")),
          )
        ],
      ),
    );
    
  }
}
