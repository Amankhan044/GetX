import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text('ScreenOne')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: TextButton(
                onPressed: () {
                  // Go back to HomeScreen
                  Get.back();
                },
                child: Text("Go Back To HomeScreen"),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: TextButton(
                onPressed: () {
                  // Navigate to ScreenTwo
                  Get.toNamed('/ScreenTwo');
                },
                child: Text("Go To Screen Two"),
              ),
            ),
          ),
          // Add buttons for changing languages
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'greeting'.tr,
                  style: TextStyle(fontSize: 18),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('en', 'US'));
                  },
                  child: Text('English'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('ur', 'PK'));
                  },
                  child: Text('Urdu'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('ja', 'JP'));
                  },
                  child: Text('Japanese'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
