import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedContainerPage extends StatelessWidget {
  const AnimatedContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    RxDouble radius = 30.0.obs;
    RxDouble width = 7.0.obs;
    RxDouble size = 300.0.obs;
    Rx<Color> color = Colors.white.obs;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Animation Container'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(),
                SizedBox(height: 30),
                Obx(
                  () => AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: size.value,
                    height: size.value,
                    decoration: BoxDecoration(
                      color: color.value,
                      borderRadius: BorderRadius.circular(radius.value),
                      border: Border.all(
                          color: Colors.deepPurple, width: width.value),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (size.value == 300) {
                          size.value = 200;
                        } else {
                          size.value = 300;
                        }
                      },
                      child: Text('Size'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (color.value == Colors.white) {
                          color.value = Colors.orange;
                        }
                        // else if (color.value == Colors.orange) {
                        //   color.value = Colors.green;
                        // }
                        else {
                          color.value = Colors.white;
                        }
                      },
                      child: Text('Color'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (radius.value == 100) {
                          radius.value = 0;
                        } else {
                          radius.value = 100;
                        }
                      },
                      child: Text('Radius'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (width.value == 7) {
                          width.value = 0;
                        } else {
                          width.value = 7;
                        }
                      },
                      child: Text('Width'),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    if (size.value == 300 &&
                        width.value == 7 &&
                        radius.value == 100 &&
                        color.value == Colors.white) {
                      width.value = 0;
                      radius.value = 0;
                      color.value = Colors.orange;
                      size.value = 200;
                    } else {
                      width.value = 7;
                      radius.value = 100;
                      color.value = Colors.white;
                      size.value = 300;
                    }
                  },
                  child: Text('All Animation'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
