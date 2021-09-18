import 'package:EUIES_Web/Core/Utilities/AppColors.dart';
import 'package:EUIES_Web/Core/Utilities/AppConstrains.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:get/get.dart';

class JumboSection extends StatefulWidget {
  JumboSection({Key? key}) : super(key: key);

  @override
  _JumboSectionState createState() => _JumboSectionState();
}

class _JumboSectionState extends State<JumboSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.width * 0.2),
      height: context.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background/studyineurope.png"),
              fit: BoxFit.cover,
              alignment: Alignment.centerLeft)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: context.height * 0.5,
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor.withOpacity(0.75),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Text(
                    "Come and see your dreams coming true with us.",
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(fontWeight: FontWeight.w600, color: Colors.black87),
                    textAlign: TextAlign.center,
                  ),
                ),
                AppConstrains.height40,
                GFButton(
                  onPressed: () {},
                  text: "Apply now",
                  type: GFButtonType.solid,
                  color: Theme.of(context).primaryColor,
                  shape: GFButtonShape.pills,
                  size: 80,
                  padding: EdgeInsets.all(20),
                  textStyle: Theme.of(context).textTheme.headline4!
                      .copyWith(fontWeight: FontWeight.w600, color: Theme.of(context).backgroundColor),
                ),
              ],
            ),
          ),
        ],
      ),
      width: double.infinity,
    );
  }
}
