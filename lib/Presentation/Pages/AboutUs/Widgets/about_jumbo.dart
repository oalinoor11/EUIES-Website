import 'package:EUIES_Web/Core/Utilities/AppColors.dart';
import 'package:EUIES_Web/Core/Utilities/AppConstrains.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutJumbo extends StatefulWidget {
  AboutJumbo({Key? key}) : super(key: key);

  @override
  _AboutJumboState createState() => _AboutJumboState();
}

class _AboutJumboState extends State<AboutJumbo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.width * 0.2),
      height: context.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background/about-jumbo.jpg"),
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
                Container(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Column(
                    children: [
                      Text(
                        "Who we are?",
                        style: GoogleFonts.robotoTextTheme()
                            .headline2!
                            .copyWith(fontWeight: FontWeight.w600, color: Colors.black87, fontSize: 50),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20,),
                      Text(
                        "Hey, we are a dedicated team to assist to fulfill your dream study in Germany. Your dream to visa processing, in every step you will get help from us. Feel free to contact with us.",
                        style: GoogleFonts.robotoTextTheme()
                            .bodyText2!
                            .copyWith(fontWeight: FontWeight.w300, color: Colors.black45, fontSize: 40),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
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
