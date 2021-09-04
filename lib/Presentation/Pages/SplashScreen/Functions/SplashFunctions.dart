import 'package:bike_sales/Core/Utilities/exportutilities.dart';
import 'package:get/get.dart';

class SplashFunctions{
  static init()async{
    await Future.delayed(Duration(seconds: 1));
    Get.offAndToNamed(AppRoutes.HOME);
  }
}