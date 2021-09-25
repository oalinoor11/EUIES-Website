import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  static HomeController to = Get.find<HomeController>();

  var scrollController = ScrollController().obs;
}