import 'package:flutter/material.dart';
import 'package:futteranimations_app/examples/animated_padding.dart';
import 'package:get/get.dart';

class AnimatedPaddingPage extends StatelessWidget {
  const AnimatedPaddingPage({super.key});

  @override
  Widget build(BuildContext context) {
    RxDouble padding = 40.0.obs;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Padding'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Container(
                  color: Colors.deepPurple.shade200,
                  child: Obx(
                    () => AnimatedPadding(
                      duration: Duration(seconds: 1),
                      padding: EdgeInsets.all(padding.value),
                      child: Container(
                        width: 200,
                        height: 200,
                        color: Colors.deepPurple,
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (padding.value == 40) {
                      padding.value = 0;
                    } else {
                      padding.value = 40;
                    }
                  },
                  child: Text('Padding 40')),
              SizedBox(
                height: 70,
              ),
              ListTile(
                onTap: () {
                  Get.to(() => AnimatedPaddingExample());
                },
                tileColor: Colors.white,
                title: const Text('Example 1'),
                leading: Icon(Icons.padding_outlined),
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
