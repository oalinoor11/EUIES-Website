import 'package:easy_web_view2/easy_web_view2.dart';
import 'package:flutter/material.dart';

class ApplyScholarship extends StatefulWidget {
  const ApplyScholarship({Key? key}) : super(key: key);

  @override
  _ApplyScholarshipState createState() => _ApplyScholarshipState();
}

class _ApplyScholarshipState extends State<ApplyScholarship> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasyWebView(
        src: "https://facebook.com",
        onLoaded: () {},
      ),
    );
  }
}
