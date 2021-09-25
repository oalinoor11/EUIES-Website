import 'package:EUIES_Web/Core/Utilities/exportutilities.dart';
import 'package:EUIES_Web/Presentation/Pages/Home/Widgets/university_item.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:get/get.dart';

class UniversitySection extends StatefulWidget {
  UniversitySection({Key? key}) : super(key: key);

  @override
  _UniversitySectionState createState() => _UniversitySectionState();
}

class _UniversitySectionState extends State<UniversitySection> {
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
          context.width > 720
              ? Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: context.height * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Study Abroad",
                        style: context.width > 720
                            ? Theme.of(context).textTheme.headline4
                            : Theme.of(context).textTheme.headline6,
                        softWrap: true,
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                )
              : Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: context.width * 0.2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Study Abroad",
                        style: context.width > 720
                            ? Theme.of(context).textTheme.headline4
                            : Theme.of(context).textTheme.headline6,
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
            itemHeight: 500,
            children: [
              UniversityItem(
                universityName: "Germany",
                imageLink:
                    "https://images.unsplash.com/20/cambridge.JPG?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
              ),
              UniversityItem(
                universityName: "France",
                imageLink:
                    "https://images.unsplash.com/20/cambridge.JPG?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
              ),
              UniversityItem(
                universityName: "Netherlands",
                imageLink:
                    "https://images.unsplash.com/20/cambridge.JPG?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
              ),
              UniversityItem(
                universityName: "Spain",
                imageLink:
                    "https://images.unsplash.com/20/cambridge.JPG?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
              ),
              UniversityItem(
                universityName: "Sweden",
                imageLink:
                    "https://images.unsplash.com/20/cambridge.JPG?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
