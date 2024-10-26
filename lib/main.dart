import 'package:ecgoevmoto/app/pages/about/about_page.dart';
import 'package:ecgoevmoto/app/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Landing Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/about', page: () => const AboutPage()),
      ],
      unknownRoute: GetPage(
        name: '/notfound',
        page: () => Scaffold(
          appBar: AppBar(title: const Text('Page Not Found')),
          body: const Center(child: Text('404 - Page not found')),
        ),
      ),
    );
  }
}
