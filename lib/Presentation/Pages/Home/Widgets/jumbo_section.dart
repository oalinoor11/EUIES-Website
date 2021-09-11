import 'package:bike_sales/Core/Utilities/AppColors.dart';
import 'package:flutter/material.dart';
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
      padding: EdgeInsets.symmetric(horizontal: context.width*0.2),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/background/studyineurope.png"),fit: BoxFit.cover, alignment: Alignment.centerLeft)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text("Find Your Next Bike", style: Theme.of(context).textTheme.headline4!.copyWith(color: AppColours.WHITE),),
          // GlassmorphicContainer(
          //   borderRadius: 20,
          //   blur: 5,
          //   alignment: Alignment.bottomCenter,
          //   border: 2,
          //   linearGradient: LinearGradient(
          //       begin: Alignment.topLeft,
          //       end: Alignment.bottomRight,
          //       colors: [
          //         Colors.black26,
          //         Colors.black26,
          //       ],
          //       stops: [
          //         0.1,
          //         1,
          //       ]),
          //   borderGradient: LinearGradient(colors: [Colors.transparent, Colors.transparent]),
          //   width: 660,
          //   height: 115,
          //   child: null,
          // ),
        ],
      ),
      width: double.infinity,
      height: 800,
    );
  }
}