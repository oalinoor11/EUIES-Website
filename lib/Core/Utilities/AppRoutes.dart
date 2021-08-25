import 'package:bike_sales/Presentation/Pages/SplashScreen/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes{
  static String INITIAL = "/";

  static List<GetPage> routes = [
    GetPage(name: INITIAL, page:() => SplashScreen(),),
  ];
}