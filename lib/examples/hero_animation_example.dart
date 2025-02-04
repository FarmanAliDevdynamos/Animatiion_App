import 'package:flutter/material.dart';

class HeroAnimationExample extends StatelessWidget {
  const HeroAnimationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12), // Rounded corners
              child: Container(
                height: 200,
                width: 350,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      //color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(2, 4),
                    ),
                  ],
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
            SizedBox(
              height: 20,
            ),
            Text(
              'Spider Man 🦸‍♂️',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Spider-Man, the iconic web-slinging hero of New York City, embodies the perfect blend of power and responsibility. Behind the mask, Peter Parker is an ordinary young man who gained extraordinary abilities after being bitten by a radioactive spider. With his superhuman agility, wall-crawling skills, and web-shooting gadgets, he protects the city from villains while balancing his personal struggles. Driven by the lesson that with great power comes great responsibility,Spider-Man remains a symbol of resilience, courage, and selflessness, proving that true heroism lies not just in strength, but in the heart 🕷️🕸️💥',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
