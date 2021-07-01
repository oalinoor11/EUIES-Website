import 'package:get/get.dart';
import 'package:initial_app/Presentation/Pages/exportpages.dart';

class AppRoutes{
  static String INITIAL = "/";

  static List<GetPage> routes = [
    GetPage(name: INITIAL, page:() => SplashScreen(),),
  ];
}