import 'package:bike_sales/Core/Utilities/AppColors.dart';
import 'package:bike_sales/Core/Utilities/AppConstrains.dart';
import 'package:bike_sales/Core/Widgets/exportwidgets.dart';
import 'package:bike_sales/Presentation/Pages/Home/Widgets/category_section.dart';
import 'package:bike_sales/Presentation/Pages/Home/Widgets/jumbo_section.dart';
import 'package:bike_sales/Presentation/Pages/Home/Widgets/news_and_reviews_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

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
        title: AppName(),
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
            AppConstrains.height80,
            CategorySection(),
            AppConstrains.height80,
            NewsAndReviewsSection(),
            AppConstrains.height80,
            Container(
              child: Column(
                children: [
                  Container(
                    color: AppColours.BLACK,
                    padding:
                        EdgeInsets.symmetric(horizontal: context.width * 0.2),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bikes for sale",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(color: AppColours.WHITE),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("Used bikes for sale"),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("New bikes for sale"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
