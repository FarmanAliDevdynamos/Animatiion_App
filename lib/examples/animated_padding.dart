import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedPaddingExample extends StatelessWidget {
  const AnimatedPaddingExample({super.key});

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
                        // color: Colors.deepPurple,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://i.postimg.cc/yYqFKNkz/download.jpg'), // Replace with your image URL
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
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
            ],
          ),
        ),
      ),
    );
  }
}
