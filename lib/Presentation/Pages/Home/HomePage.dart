import 'package:EUIES_Web/Core/Utilities/AppColors.dart';
import 'package:EUIES_Web/Core/Utilities/AppConstrains.dart';
import 'package:EUIES_Web/Core/Widgets/bottom_footer_section.dart';
import 'package:EUIES_Web/Core/Widgets/exportwidgets.dart';
import 'package:EUIES_Web/Core/Widgets/top_footer_section.dart';
import 'package:EUIES_Web/Presentation/Pages/Home/Widgets/category_section.dart';
import 'package:EUIES_Web/Presentation/Pages/Home/Widgets/jumbo_section.dart';
import 'package:EUIES_Web/Presentation/Pages/Home/Widgets/news_and_reviews_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollController = ScrollController();

  bool showFloatingButton = false;

  @override
  void initState() {
    scrollController.addListener(() {
      if (scrollController.offset > 120) {
        setState(() {
          showFloatingButton = true;
        });
      } else {
        setState(() {
          showFloatingButton = false;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.BACKGROUND,
      appBar: AppBar(
        title: SizedBox(child: AppName(),height: context.width > 1080 ? 150 : 120,),
        toolbarHeight: context.width > 1080 ? 120 : null,
        actions: context.width > 1080 ? AppMenuItems() : null,
      ),
      floatingActionButton: showFloatingButton
          ? FloatingActionButton(
              onPressed: () {
                scrollController.animateTo(0,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn);
              },
              backgroundColor: AppColours.RED,
              child: Icon(Icons.arrow_upward),
            )
          : null,
      drawer: context.width <= 1080
          ? Drawer(
              child: Container(
                color: Colors.black54,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: AppDrawerItems(),
                ),
              ),
            )
          : null,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            JumboSection(),
            CategorySection(),
            AppConstrains.height80,
            NewsAndReviewsSection(),
            AppConstrains.height80,
            TopFooterSection(),
            BottomFooterSection(),
          ],
        ),
      ),
    );
  }
}
