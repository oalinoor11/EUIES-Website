import 'package:get/get.dart';
import 'package:EUIES_Web/Presentation/Pages/homescreen.dart';

class AppRoutes{
  //static String INITIAL = "/";
  static String HOMESCREEN = "/HomeScreen";

  static List<GetPage> routes = [
    GetPage(name: HOMESCREEN, page:() => HomeScreen(),),
  ];
}