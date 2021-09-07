import 'package:bike_sales/Core/Utilities/exportutilities.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TopFooterSection extends StatefulWidget {
  TopFooterSection({Key? key}) : super(key: key);

  @override
  _TopFooterSectionState createState() => _TopFooterSectionState();
}

class _TopFooterSectionState extends State<TopFooterSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: AppColours.BLACK,
            padding:
            EdgeInsets.symmetric(horizontal: context.width * 0.2),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bikes for sale",
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(color: AppColours.WHITE),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Used bikes for sale"),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("New bikes for sale"),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("BikeFacts History Report"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}