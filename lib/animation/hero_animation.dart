import 'package:flutter/material.dart';
import 'package:futteranimations_app/examples/hero_animation_example.dart';
import 'package:get/get.dart';

class HeroAnimationPage extends StatelessWidget {
  const HeroAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Get.to(HeroAnimationExample(),
                    duration: Duration(seconds: 1),
                    transition: Transition.fadeIn);
              },
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: const BoxDecoration(
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.black26,
                          //     blurRadius: 8,
                          //     offset: Offset(2, 4),
                          //   ),
                          // ],
                          ),
                      child: Hero(
                        tag: "Api",
                        child: Image.network(
                          'https://i.postimg.cc/7hpycB78/3d-cartoon-futuristic-superhero-545377-8503.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Spider Man',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'I am Spider-Man',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
