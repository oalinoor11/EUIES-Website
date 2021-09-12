import 'package:gweb/Core/Utilities/exportutilities.dart';
import 'package:gweb/Presentation/Pages/Home/Widgets/bike_carousel_item.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:get/get.dart';

class CategorySection extends StatefulWidget {
  CategorySection({Key? key}) : super(key: key);

  @override
  _CategorySectionState createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColours.WHITE,
        boxShadow: [
          BoxShadow(
            color: AppColours.SHADOWCOLOR,
            offset: Offset(0, 0),
            blurRadius: 9,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppConstrains.height20,
          context.width > 720 ? Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width * 0.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Our Dedicated Services",
                  style: context.width > 720 ? Theme.of(context).textTheme.headline4 : Theme.of(context).textTheme.headline6,
                  softWrap: true,
                ),
              ],
            ),
          ) : Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width * 0.2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Our Dedicated Services",
                  style: context.width > 720 ? Theme.of(context).textTheme.headline4 : Theme.of(context).textTheme.headline6,
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          AppConstrains.height40,
          GFItemsCarousel(
            rowCount: context.width >= 1080
                ? 4
                : context.width > 720
                    ? 2
                    : 1,
            children: [
              BikeCategoryItem("Learner"),
              BikeCategoryItem("Cruisers"),
              BikeCategoryItem("Dirt Bikes"),
              BikeCategoryItem("Road Bikes"),
              BikeCategoryItem("ATVs"),
            ],
          ),
        ],
      ),
    );
  }
}
