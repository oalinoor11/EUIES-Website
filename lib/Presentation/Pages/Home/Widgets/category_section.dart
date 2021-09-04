import 'package:bike_sales/Core/Utilities/exportutilities.dart';
import 'package:bike_sales/Presentation/Pages/Home/Widgets/bike_carousel_item.dart';
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
              blurRadius: 9)
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppConstrains.height20,
          Padding(
            padding:
            EdgeInsets.symmetric(horizontal: context.width * 0.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    "Explore bikes by category",
                    style: Theme.of(context).textTheme.headline4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        "View all categories",
                        softWrap: true,
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(color: AppColours.RED),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 16,color: AppColours.RED,),
                  ],
                )
              ],
            ),
          ),
          AppConstrains.height40,
          GFItemsCarousel(
            rowCount: context.width >= 1080 ? 4 : context.width > 720 ? 2 : 1,
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