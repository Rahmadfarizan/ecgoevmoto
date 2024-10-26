import 'package:flutter/material.dart';
import '../../widgets/app_bar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: const Center(
        child: Text('This is the About Page.'),
      ),
    );
  }
}
