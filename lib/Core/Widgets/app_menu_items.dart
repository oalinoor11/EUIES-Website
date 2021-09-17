import 'package:gweb/Core/Utilities/exportutilities.dart';
import 'package:gweb/Core/Widgets/exportwidgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

List<Widget> AppMenuItems() {
  return [
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
    AppConstrains.width40,
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: GFButton(
        onPressed: () {},
        color: AppColours.RED,
        text: "Apply for Scholarship",
        size: 30,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
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
      onPressed: () {},
      color: AppColours.RED,
      text: "Apply for Scholarship",
      size: 30,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      shape: GFButtonShape.pills,
    ),
  ];
}
