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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Text(
              "Contact Us",
              style: Theme
                  .of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: AppColours.BLACK.withOpacity(0.54)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width * 0.1),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 10)),
                        labelText: "Name",
                      ),
                    ),
                  ),
                ),
                AppConstrains.width40,
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 10)),
                        labelText: "Email",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          AppConstrains.height20,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width * 0.1),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Phone",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 10)),
                        labelText: "Phone",
                      ),
                    ),
                  ),
                ),
                AppConstrains.width40,
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Choice of University",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 10)),
                        labelText: "Choice of University",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          AppConstrains.height20,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width * 0.2),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Your message to us",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 10)),
                labelText: "Your message to us",
              ),
              maxLines: 5,
              textAlignVertical: TextAlignVertical.top,
              textAlign: TextAlign.start,
            ),
          ),
          AppConstrains.height40,
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.send,color: AppColours.WHITE,),
            label: Text("Send", style: TextStyle(color: AppColours.WHITE),),
            style: ButtonStyle(
              backgroundColor:MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
              fixedSize: MaterialStateProperty.all<Size>(Size(200, 40)),),
          ),
          AppConstrains.height40,
        ],
      ),
    );
  }
}
