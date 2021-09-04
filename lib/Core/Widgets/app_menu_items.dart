import 'package:bike_sales/Core/Utilities/exportutilities.dart';
import 'package:bike_sales/Core/Widgets/exportwidgets.dart';
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
            "Bike For Sale",
            style: Get.textTheme.button,
          )),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
          onPressed: () {},
          child: Text(
            "Showroom",
            style: Get.textTheme.button,
          )),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
          onPressed: () {},
          child: Text(
            "Sell My Bike",
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
    AppConstrains.width40,
    GFIconBadge(
      padding: EdgeInsets.zero,
      child: Icon(
        Icons.notifications,
        size: 20,
      ),
      counterChild: GFBadge(
        child: Text("12"),
      ),
      position: GFBadgePosition.topEnd(top: 40),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
          onPressed: () {},
          child: Text(
            "Sign In",
            style: Get.textTheme.button,
          )),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
          onPressed: () {},
          child: Text(
            "Join",
            style: Get.textTheme.button,
          )),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: GFButton(
        onPressed: () {},
        color: AppColours.LIGHTGREEN,
        text: "Sell my bike",
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
            "Bike For Sale",
            style: Get.textTheme.button,
          )),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
          onPressed: () {},
          child: Text(
            "Showroom",
            style: Get.textTheme.button,
          )),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
          onPressed: () {},
          child: Text(
            "Sell My Bike",
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
    GFIconBadge(
      padding: EdgeInsets.zero,
      child: Icon(
        Icons.notifications,
        size: 20,
        color: AppColours.WHITE,
      ),
      counterChild: GFBadge(
        child: Text("12"),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
          onPressed: () {},
          child: Text(
            "Sign In",
            style: Get.textTheme.button,
          )),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
          onPressed: () {},
          child: Text(
            "Join",
            style: Get.textTheme.button,
          )),
    ),
    GFButton(
      onPressed: () {},
      color: AppColours.LIGHTGREEN,
      text: "Sell my bike",
      size: 30,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      shape: GFButtonShape.pills,
    ),
  ];
}
