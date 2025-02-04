import 'package:flutter/material.dart';
import 'package:futteranimations_app/examples/animated_switcher_example.dart';
import 'package:get/get.dart';

class AnimatedSwitcherPage extends StatelessWidget {
  const AnimatedSwitcherPage({super.key});

  @override
  Widget build(BuildContext context) {
    RxInt Counter = 0.obs;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Switcher'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => AnimatedSwitcher(
                    switchInCurve: Curves.decelerate,
                    transitionBuilder: (child, animation) {
                      return ScaleTransition(
                        scale: animation,
                        child: child,
                      );
                    },
                    duration: Duration(milliseconds: 300),
                    child: Text(
                      key: ValueKey(Counter.value),
                      Counter.value.toString(),
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Counter.value++;
              },
              child: Text('Increment'),
            ),
            SizedBox(
              height: 70,
            ),
            ListTile(
              onTap: () {
                Get.to(() => AnimatedSwitcherExample());
              },
              tileColor: Colors.white,
              title: const Text('Example 1'),
              leading: Icon(Icons.swipe_left),
            ),
          ],
        ),
      ),
    );
  }
}
