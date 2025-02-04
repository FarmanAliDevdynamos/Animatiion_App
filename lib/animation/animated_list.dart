import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedListPage extends StatelessWidget {
  const AnimatedListPage({super.key});

  @override
  Widget build(BuildContext context) {
    RxDouble top = 0.0.obs;
    RxDouble left = 0.0.obs;
    RxDouble left2 = 0.0.obs;
    RxDouble right = 0.0.obs;
    RxDouble bottom = 0.0.obs;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Position'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: Obx(
                  () => Container(
                    height: 400,
                    width: 400,
                    color: Colors.white,
                    child: Stack(
                      children: [
                        AnimatedPositioned(
                          left: left.value,
                          top: 170,
                          // bottom: bottom.value,
                          // right: right.value,
                          duration: Duration(seconds: 2),
                          child: Container(
                            width: 50,
                            height: 50,
                            color: Colors.deepPurple,
                          ),
                        ),
                        AnimatedPositioned(
                          left: 150,
                          top: left2.value,
                          // bottom: bottom.value,
                          // right: right.value,
                          duration: Duration(seconds: 2),
                          child: Container(
                            width: 50,
                            height: 50,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    left.value = 200;
                    top.value = 200;
                  },
                  child: Text('Right'),
                ),
                ElevatedButton(
                  onPressed: () {
                    left.value = 0;
                    top.value = 0;
                  },
                  child: Text('Reset'),
                ),
                ElevatedButton(
                  onPressed: () {
                    left.value = 400;
                  },
                  child: Text('X'),
                ),
                ElevatedButton(
                  onPressed: () {
                    top.value = 400;
                  },
                  child: Text('Bottom'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text('X Move'),
                Expanded(
                  child: Obx(
                    () => Slider(
                      min: 0,
                      max: 305,
                      inactiveColor: Colors.white,
                      value: left.value,
                      onChanged: (value) {
                        left.value = value;
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text('Y Move'),
                Expanded(
                  child: Obx(
                    () => Slider(
                      min: 0,
                      max: 350,
                      inactiveColor: Colors.white,
                      value: left2.value,
                      onChanged: (value) {
                        left2.value = value;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
