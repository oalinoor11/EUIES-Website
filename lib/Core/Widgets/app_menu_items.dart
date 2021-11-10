import 'package:EUIES_Web/Core/Utilities/AppColors.dart';
import 'package:EUIES_Web/Core/Utilities/AppConstrains.dart';
import 'package:EUIES_Web/Core/Utilities/AppRoutes.dart';
import 'package:EUIES_Web/Core/Utilities/exportutilities.dart';
import 'package:EUIES_Web/Core/Widgets/exportwidgets.dart';
import 'package:EUIES_Web/Presentation/Controllers/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:url_launcher/url_launcher.dart';

List<Widget> AppMenuItems() {
  return [
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
          onPressed: () {
            HomeController.to.scrollController().animateTo(Get.context!.height, duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
            },
          child: Text(
            "Study Abroad",
            style: Get.textTheme.button,
          )),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
          onPressed: () {
            HomeController.to.scrollController().animateTo(Get.context!.height*2, duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
          },
          child: Text(
            "Services",
            style: Get.textTheme.button,
          )),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
          onPressed: () {
            HomeController.to.scrollController().animateTo(Get.context!.height*3, duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
            },
          child: Text(
            "Contact",
            style: Get.textTheme.button,
          )),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
          onPressed: () async{
            var dist = await Get.toNamed(AppRoutes.ABOUTSCREEN);
          },
          child: Text(
            "About Us",
            style: Get.textTheme.button,
          )),
    ),
    AppConstrains.width40,
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: GFButton(
        onPressed: () {
          // Get.toNamed(AppRoutes.APPLYSCREEN);
          launch("https://docs.google.com/forms/d/19nuD1ExVPrX2iBTT0-xt1kXsFtTvbuM0JKRHxi0l5t4/prefill");
        },
        color: AppColours.RED,
        text: "Apply for Scholarship",
        size: 30,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        shape: GFButtonShape.pills,
      ),
    ),
    AppConstrains.width20,
  ];
}

List<Widget> AppDrawerItems() {
  return [
    AppConstrains.height15,
    AppName(),
    AppConstrains.height40,
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
          onPressed: () {},
          child: Text(
            "Study Abroad",
            style: Get.textTheme.button,
          )),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
          onPressed: () {},
          child: Text(
            "Services",
            style: Get.textTheme.button,
          )),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
          onPressed: () {},
          child: Text(
            "Contact",
            style: Get.textTheme.button,
          )),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
          onPressed: () {},
          child: Text(
            "About Us",
            style: Get.textTheme.button,
          )),
    ),
    GFButton(
      onPressed: () {
        // Get.toNamed(AppRoutes.APPLYSCREEN);
        launch("https://docs.google.com/forms/d/19nuD1ExVPrX2iBTT0-xt1kXsFtTvbuM0JKRHxi0l5t4/edit?usp=sharing");
      },
      color: AppColours.RED,
      text: "Apply for Scholarship",
      size: 30,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      shape: GFButtonShape.pills,
    ),
  ];
}
