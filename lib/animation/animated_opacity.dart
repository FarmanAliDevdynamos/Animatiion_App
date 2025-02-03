import 'package:flutter/material.dart';
import 'package:futteranimations_app/examples/animated_opacity_example.dart';
import 'package:get/get.dart';

class AnimatedOpacityPage extends StatelessWidget {
  AnimatedOpacityPage({super.key});

  final RxDouble opacity = 1.0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Opacity'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                    () => AnimatedOpacity(
                      curve: Curves.ease,
                      opacity: opacity.value,
                      duration: const Duration(seconds: 1),
                      child: Container(
                        height: 300,
                        width: 300,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      opacity.value = 1.0;
                    },
                    child: const Text('Opacity 1'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      opacity.value = 0.5;
                    },
                    child: const Text('Opacity 0.5'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      opacity.value = 0.0;
                    },
                    child: const Text('Opacity 0'),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              ListTile(
                onTap: () {
                  Get.to(() => AnimatedOpacityExample());
                },
                tileColor: Colors.white,
                title: const Text('Example 1'),
                leading: Icon(Icons.color_lens),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
