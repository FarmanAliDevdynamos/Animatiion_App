import 'package:flutter/material.dart';
import 'package:futteranimations_app/animation/animated_container.dart';
import 'package:futteranimations_app/animation/animated_opacity.dart';
import 'package:futteranimations_app/animation/animated_padding.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  Get.to(() => AnimatedContainerPage());
                },
                tileColor: Colors.white,
                title: const Text('Animated Container'),
                leading: Icon(Icons.add_box),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  Get.to(() => AnimatedOpacityPage());
                },
                tileColor: Colors.white,
                title: const Text('Animated Opacity'),
                leading: Icon(Icons.color_lens),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  Get.to(() => AnimatedPaddingPage());
                },
                tileColor: Colors.white,
                title: const Text('Animated Padding'),
                leading: Icon(Icons.spa_outlined),
              )
            ],
          ),
        ),
      ),
    );
  }
}
