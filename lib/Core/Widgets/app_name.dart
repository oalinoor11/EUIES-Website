import 'package:EUIES_Web/Core/Utilities/AppColors.dart';
import 'package:EUIES_Web/Core/Widgets/exportwidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppName extends StatefulWidget {
  late double height;
  AppName({this.height = 120});

  @override
  State<AppName> createState() => _AppNameState();
}

class _AppNameState extends State<AppName> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/Logo/logowithname.png",
    );
  }
}
