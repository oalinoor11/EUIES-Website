import 'package:EUIES_Web/Presentation/Pages/AboutUs/about_us_page.dart';
import 'package:EUIES_Web/Presentation/Pages/ApplyScholarship/apply_scholarship.dart';
import 'package:EUIES_Web/Presentation/Pages/exportpages.dart';
import 'package:get/get.dart';

class AppRoutes{
  static String INITIAL = "/";
  static String HOME = "/home";
  static String ABOUTSCREEN = "/aboutscreen";
  static String APPLYSCREEN = "/applyscreen";

  static List<GetPage> routes = [
    GetPage(name: INITIAL, page:() => SplashScreen(),),
    GetPage(name: HOME, page:() => HomePage(),),
    GetPage(name: ABOUTSCREEN, page:() => AboutUsPage(),),
    GetPage(name: APPLYSCREEN, page:() => ApplyScholarship(),),
  ];
}