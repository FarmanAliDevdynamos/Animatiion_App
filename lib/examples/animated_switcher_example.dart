// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

// class AnimatedSwitcherExample extends StatelessWidget {
//   const AnimatedSwitcherExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var listIcons = [
//       Icons.lock_outline_sharp,
//       Icons.ac_unit_outlined,
//       Icons.accessibility_rounded,
//       Icons.home,
//       Icons.leak_remove_sharp,
//       Icons.settings_accessibility_rounded,
//       Icons.outbond_outlined,
//       Icons.space_dashboard_rounded,
//       Icons.hail,
//       Icons.spa,
//       Icons.library_books_outlined,
//     ];

//     RxInt index = 0.obs;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Animation Switcher'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Obx(
//                   () => AnimatedSwitcher(
//                     switchInCurve: Curves.decelerate,
//                     transitionBuilder: (child, animation) {
//                       return ScaleTransition(
//                         scale: animation,
//                         child: child,
//                       );
//                     },
//                     duration: Duration(milliseconds: 300),
//                     child: Icon(
//                       key: ValueKey(index.value),
//                       listIcons[index.value],
//                       size: 100,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 index.value++;
//                 if (index.value == listIcons.length) {
//                   index.value = 0;
//                 }
//               },
//               child: Text('Increment'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedSwitcherExample extends StatelessWidget {
  const AnimatedSwitcherExample({super.key});

  @override
  Widget build(BuildContext context) {
    var imageUrls = [
      'https://i.postimg.cc/yYqFKNkz/download.jpg',
      'https://i.postimg.cc/Pq3W9M1K/download.jpg',
      'https://i.postimg.cc/qRNsTCLr/images-1.jpg',
    ];

    RxInt index = 0.obs;

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
                    duration: const Duration(milliseconds: 1000),
                    switchInCurve: Curves.easeInOut,
                    transitionBuilder: (child, animation) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                    child: Image.network(
                      imageUrls[index.value],
                      key: ValueKey(index.value),
                      width: 250,
                      height: 250,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const SizedBox(
                          width: 150,
                          height: 150,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.error,
                          size: 100,
                          color: Colors.red,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                index.value++;
                if (index.value == imageUrls.length) {
                  index.value = 0;
                }
              },
              child: const Text('Next Image'),
            ),
          ],
        ),
      ),
    );
  }
}
