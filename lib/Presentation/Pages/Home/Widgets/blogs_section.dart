import 'package:EUIES_Web/Core/Utilities/exportutilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesSection extends StatefulWidget {
  ServicesSection({Key? key}) : super(key: key);

  @override
  _ServicesSectionState createState() => _ServicesSectionState();
}

class _ServicesSectionState extends State<ServicesSection> {
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
              child: context.width > 1080 ? Text(
                "Our Dedicated Services",
                style: Theme.of(context).textTheme.headline4,
                overflow: TextOverflow.ellipsis,
              ) : Text(
                "Services",
                style: Theme.of(context).textTheme.headline4,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(scrollDirection: Axis.horizontal,
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
                                "assets/images/Career-Counseling.png",
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(
                                  "Career Counseling",
                                  style: GoogleFonts.abel(fontSize: 18),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 5,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(
                                  "Be it Science, Management or Humanities, we have helped students in all fields for decades so we exactly know how you can plan your future which is appropriate for your background. We are proud to have helped students achieve success in different fields.",
                                  style: GoogleFonts.abel(fontSize: 18),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 5,
                                  textAlign: TextAlign.justify,
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
                                "assets/images/interview.png",
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(
                                  "Interview Assistance",
                                  style: GoogleFonts.abel(fontSize: 18),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 5,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(
                                  "VISA interview is one of the biggest steps and a simple mistake in this step may prevent students from achieving their dreams. We provide expert assistance during this phase and help students by applying for interviews, scheduling interview dates, fees payment, and also help students prepare for interview questions.",
                                  style: GoogleFonts.abel(fontSize: 18),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 5,
                                  textAlign: TextAlign.justify,
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
                                "assets/images/doccumantation.png",
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(
                                  "Documentation",
                                  style: GoogleFonts.abel(fontSize: 18),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 5,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(
                                  "Documentation is one of the most important aspects of applying for foreign education. We can help students create documentation that makes sure universities accept the applications and also make sure VISA interviews are not rejected. We make sure that students do not miss any important documents during application process.",
                                  style: GoogleFonts.abel(fontSize: 18),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 5,
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
