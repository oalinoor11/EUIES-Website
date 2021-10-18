import 'package:EUIES_Web/Core/Utilities/AppColors.dart';
import 'package:EUIES_Web/Core/Utilities/AppConstrains.dart';
import 'package:EUIES_Web/Core/Widgets/bottom_footer_section.dart';
import 'package:EUIES_Web/Core/Widgets/exportwidgets.dart';
import 'package:EUIES_Web/Core/Widgets/top_footer_section.dart';
import 'package:EUIES_Web/Presentation/Controllers/HomeController.dart';
import 'package:EUIES_Web/Presentation/Pages/Home/Widgets/blogs_section.dart';
import 'package:EUIES_Web/Presentation/Pages/Home/Widgets/jumbo_section.dart';
import 'package:EUIES_Web/Presentation/Pages/Home/Widgets/university_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showFloatingButton = false;
  Color appBarBackGroundColor = Colors.black54;
  HomeController homeController = Get.put(HomeController());

  @override
  void initState() {
    HomeController.to.scrollController.value.addListener(() {
      if (HomeController.to.scrollController.value.offset > 120) {
        setState(() {
          showFloatingButton = true;
          appBarBackGroundColor = Colors.black87;
        });
      } else {
        setState(() {
          showFloatingButton = false;
          appBarBackGroundColor = Colors.black54;
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
        title: SizedBox(
          child: InkWell(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            splashFactory: NoSplash.splashFactory,
            child: AppName(),
            onTap: () {
              HomeController.to.scrollController.value.animateTo(0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn);
            },
          ),
          height: context.width > 1080 ? 150 : 120,
        ),
        toolbarHeight: context.width > 1080 ? 120 : null,
        actions: context.width > 1080 ? AppMenuItems() : null,
        backgroundColor: appBarBackGroundColor,
      ),
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
        controller: HomeController.to.scrollController.value,
        child: Column(
          children: [
            JumboSection(),
            UniversitySection(),
            AppConstrains.height80,
            ServicesSection(),
            AppConstrains.height80,
            TopFooterSection(),
            BottomFooterSection(),
          ],
        ),
      ),
    );
  }
}
