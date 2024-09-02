import 'package:flutter/material.dart';
import 'package:flutter_getx/views/home_view.dart';
import 'package:flutter_getx/views/localization_view.dart';
import 'package:flutter_getx/views/screen_two.dart';
import 'package:flutter_getx/views/screenone_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeView(),
      getPages: [
        GetPage(name: '/', page: () => HomeView()),
        GetPage(name: '/ScreenOne', page: () => ScreenOne()),
        GetPage(name: '/ScreenTwo', page: () => ScreenTwo()),
      ],
    );
  }
}
