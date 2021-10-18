import 'package:EUIES_Web/Core/Utilities/AppColors.dart';
import 'package:EUIES_Web/Core/Utilities/AppConstrains.dart';
import 'package:flutter/material.dart';

class UniversityItem extends StatefulWidget {
  late final String universityName;
  late final String imageLink;
  UniversityItem({required this.universityName, required this.imageLink});

  @override
  State<UniversityItem> createState() => _UniversityItemState();
}

class _UniversityItemState extends State<UniversityItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              "assets/${widget.imageLink}",
              height: 300,
            ),
          ),
        ),
        AppConstrains.height25,
        Text(
          "${widget.universityName}",
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
