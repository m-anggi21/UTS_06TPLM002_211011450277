import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 26, 35, 126), // Dark blue
              Color.fromARGB(255, 37, 38, 38), // Gray
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Serpong',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Senin, 28 Oktober, 2024',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              '18°C',
              style: TextStyle(
                fontSize: 100,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            // Dashed line
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                30,
                (index) => Container(
                  width: 8,
                  height: 2,
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Rainy',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '20°C / 23°C',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
