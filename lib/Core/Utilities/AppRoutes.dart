import 'package:gweb/Presentation/Pages/exportpages.dart';
import 'package:get/get.dart';

class AppRoutes{
  static String INITIAL = "/";
  static String HOME = "/home";

  static List<GetPage> routes = [
    GetPage(name: INITIAL, page:() => SplashScreen(),),
    GetPage(name: HOME, page:() => HomePage(),),
  ];
}