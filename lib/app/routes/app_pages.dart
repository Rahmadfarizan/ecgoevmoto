import 'package:get/get.dart';
import '../pages/home/home_page.dart';
import '../pages/about/about_page.dart';

class AppPages {
  static var routes = [
    GetPage(name: '/home', page: () => HomePage()),
    GetPage(name: '/about', page: () => AboutPage()),
  ];
}
