import 'package:flutter/material.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/carousel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselWidget(),
            const SizedBox(height: 20),
            const Text('Welcome to the Home Page!'),
          ],
        ),
      ),
    );
  }
}
