import 'package:demomobile/pages/HomePage.dart';
import 'package:demomobile/pages/IntroPage.dart';
import 'package:demomobile/pages/LoginPage.dart';
import 'package:get/get.dart';

List<GetPage> myroute = [
  GetPage(
    name: "/",
    page: () => HomePage(),
  ),
  GetPage(
    name: "/intro",
    page: () => IntroPage(),
  ),
  GetPage(
    name: "/login",
    page: () => LoginPage(),
  ),
];
