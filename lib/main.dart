import 'package:flutter/material.dart';
import 'package:futteranimations_app/configs/themes.dart';
import 'package:futteranimations_app/pages/hompage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animation App',
      theme: lightTheme,
      home: Homepage(),
    );
  }
}
