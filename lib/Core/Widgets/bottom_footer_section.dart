import 'package:bike_sales/Core/Utilities/exportutilities.dart';
import 'package:bike_sales/Core/Widgets/exportwidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';



class BottomFooterSection extends StatefulWidget {
  const BottomFooterSection({Key? key}) : super(key: key);

  @override
  _BottomFooterSectionState createState() => _BottomFooterSectionState();
}

class _BottomFooterSectionState extends State<BottomFooterSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColours.RED,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal:context.width >= 1080 ? context.width * 0.2 : context.width * 0.1, vertical: 10),
      child: context.width > 720 ? Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: childrens,
      ) : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: childrens,
      ),
    );
  }


  List<Widget> childrens = [
    SizedBox(child: AppName(), height: 20, width: 120,),
    Get.context!.width <= 720 ? AppConstrains.height5 : SizedBox.shrink(),
    Container(
      child: Text(
        "© carsales.com Limited 1999-2021",
        style: TextStyle(color: Colors.white),
        softWrap: true,
      ),
    ),
    Get.context!.width <= 720 ? AppConstrains.height5 : SizedBox.shrink(),
    Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 10,
          child: SvgPicture.asset(
            "assets/images/Logo/facebook.svg",
          ),
        ),
        AppConstrains.width20,
        CircleAvatar(
          radius: 10,
          child: SvgPicture.asset(
            "assets/images/Logo/twetter.svg",
          ),
        ),
        AppConstrains.width20,
        CircleAvatar(
          radius: 10,
          child: SvgPicture.asset(
            "assets/images/Logo/Insta.svg",
          ),
        ),
      ],
    ),
  ];

}
