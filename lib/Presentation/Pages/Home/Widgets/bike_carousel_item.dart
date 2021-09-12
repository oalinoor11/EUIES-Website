import 'package:gweb/Core/Utilities/AppColors.dart';
import 'package:gweb/Core/Utilities/AppConstrains.dart';
import 'package:flutter/material.dart';

class BikeCategoryItem extends StatelessWidget {
  late final String categoryName;
  BikeCategoryItem(this.categoryName);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/bikes/$categoryName.png",
          width: 150,
        ),
        AppConstrains.height25,
        Text(
          "$categoryName",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(
              color: AppColours.RED,
              fontWeight: FontWeight.w200,
              letterSpacing: 1.2),
        ),
      ],
    );
  }
}
