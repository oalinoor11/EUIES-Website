import 'package:EUIES_Web/Presentation/Pages/aboutscreen.dart';
import 'package:EUIES_Web/Presentation/Pages/exportpages.dart';
import 'package:get/get.dart';

class AppRoutes{
  static String INITIAL = "/";
  static String HOME = "/home";
  static String ABOUTSCREEN = "/aboutscreen";

  static List<GetPage> routes = [
    GetPage(name: INITIAL, page:() => SplashScreen(),),
    GetPage(name: HOME, page:() => HomePage(),),
    GetPage(name: ABOUTSCREEN, page:() => AboutScreen(),),
  ];
}