import 'package:EUIES_Web/Core/Utilities/AppColors.dart';
import 'package:EUIES_Web/Core/Utilities/AppConstrains.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactSector extends StatefulWidget {
  const ContactSector({Key? key}) : super(key: key);

  @override
  _ContactSectorState createState() => _ContactSectorState();
}

class _ContactSectorState extends State<ContactSector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.height,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 20.0, horizontal: context.width * 0.2),
            child: SizedBox(
              width: 350,
              child: Text(
                "Contact Us",
                style: Theme.of(context).textTheme.headline4,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(
              left: context.width * 0,
              right: context.width * 0,
              bottom: 80,
            ),
            height: 600,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 10,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/germanoffice.jpg",
                          fit: BoxFit.contain,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.school, color: Colors.red,),
                                  SizedBox(width: 10,),
                                  Text(
                                      "Germany Office",
                                      softWrap: true,
                                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)
                                  ),
                                ],
                              ),

                              SizedBox(height: 10,),
                              Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.domain, color: Colors.blue,),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: Text(
                                        "Plot: X, Block: X, Berlin, Germany 1229",
                                        softWrap: true,
                                        maxLines: 3,
                                        style: TextStyle(fontSize: 18.0,)
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 10,),
                              Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.support_agent, color: Colors.green),
                                  SizedBox(width: 10,),
                                  Text(
                                      "+49 17336545464",
                                      softWrap: true,
                                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                AppConstrains.width20,
                SizedBox(
                  width: 350,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 10,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/indiaoffice.jpg",
                          fit: BoxFit.contain,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.school, color: Colors.red,),
                                  SizedBox(width: 10,),
                                  Text(
                                      "India Office",
                                      softWrap: true,
                                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)
                                  ),
                                ],
                              ),

                              SizedBox(height: 10,),
                              Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.domain, color: Colors.blue,),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: Text(
                                        "Plot: X, Block: X, Kolkata, India 1229",
                                        softWrap: true,
                                        maxLines: 3,
                                        style: TextStyle(fontSize: 18.0,)
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 10,),
                              Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.support_agent, color: Colors.green),
                                  SizedBox(width: 10,),
                                  Text(
                                      "+91 17336545464",
                                      softWrap: true,
                                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                AppConstrains.width20,
                SizedBox(
                  width: 350,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 10,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/dhakaoffice.jpg",
                          fit: BoxFit.contain,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.school, color: Colors.red,),
                                  SizedBox(width: 10,),
                                  Text(
                                      "Bangladesh Office",
                                      softWrap: true,
                                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)
                                  ),
                                ],
                              ),

                              SizedBox(height: 10,),
                              Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.domain, color: Colors.blue,),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: Text(
                                        "Plot: X, Block: X, Dhaka, Bangladesh 1229",
                                        softWrap: true,
                                        maxLines: 3,
                                        style: TextStyle(fontSize: 18.0,)
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 10,),
                              Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.support_agent, color: Colors.green),
                                  SizedBox(width: 10,),
                                  Text(
                                      "+880 17336545464",
                                      softWrap: true,
                                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
