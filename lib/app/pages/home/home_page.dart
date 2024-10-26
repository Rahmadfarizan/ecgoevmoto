import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AnimatedContainer(
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
          color: Colors.blue,
          child: const Text('Landing Page'),
        ),
        actions: [
          TextButton(
              onPressed: () => Get.toNamed('/home'), child: const Text('Home')),
          TextButton(
              onPressed: () => Get.toNamed('/about'),
              child: const Text('About')),
        ],
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(height: 200.0, autoPlay: true),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: const BoxDecoration(color: Colors.amber),
                      child: Text('Slide $i',
                          style: const TextStyle(fontSize: 16.0)));
                },
              );
            }).toList(),
          ),
          // Add more content here
        ],
      ),
    );
  }
}
