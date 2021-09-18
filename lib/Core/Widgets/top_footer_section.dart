import 'package:EUIES_Web/Core/Utilities/exportutilities.dart';
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
      color: AppColours.WHITE,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Contact Us",
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(color: AppColours.WHITE),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Name",
                border: OutlineInputBorder(),
                labelText: "Name"
              ),
            ),
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
    );
  }
}
