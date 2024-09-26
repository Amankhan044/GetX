import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  // Login API function
  Future<void> loginApi() async {
    try {
      // Show loading dialog or progress indicator
      Get.snackbar('Loading', 'Please wait...',
          snackPosition: SnackPosition.BOTTOM);

      // Prepare API URL and data
      final url = Uri.parse('https://reqres.in/api/login');
      final response = await http.post(
        url,
        body: {
          'email': emailController.value.text,
          'password': passwordController.value.text,
        },
      );

      // Check response status
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        Get.snackbar('Success', 'Logged in successfully',
            snackPosition: SnackPosition.BOTTOM);
        // You can handle further logic after login here, such as saving the token
      } else {
        var errorData = jsonDecode(response.body);
        Get.snackbar('Error', errorData['error'] ?? 'Login failed',
            snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      // Handle any other errors (network issues, etc.)
      Get.snackbar('Exception', e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
