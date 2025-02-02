import 'package:flutter/material.dart';
import 'package:futteranimations_app/pages/hompage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation App',
      theme: lighttheme,
      home: Homepage(),
    );
  }
}
