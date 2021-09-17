import 'package:gweb/Core/Utilities/exportutilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class NewsAndReviewsSection extends StatefulWidget {
  NewsAndReviewsSection({Key? key}) : super(key: key);

  @override
  _NewsAndReviewsSectionState createState() => _NewsAndReviewsSectionState();
}

class _NewsAndReviewsSectionState extends State<NewsAndReviewsSection> {
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
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 20.0, horizontal: context.width * 0.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "Bike Reviews, News, & Advice",
                    style: Theme.of(context).textTheme.headline4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                GFButton(
                  onPressed: () {},
                  color: AppColours.RED,
                  shape: GFButtonShape.pills,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  elevation: 2,
                  size: 50,
                  child: Center(
                    child: Text(
                      "Search News & Reviews",
                      style: Theme.of(context).textTheme.button,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}