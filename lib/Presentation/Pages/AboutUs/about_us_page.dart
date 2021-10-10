import 'package:EUIES_Web/Core/Utilities/AppColors.dart';
import 'package:EUIES_Web/Core/Utilities/exportutilities.dart';
import 'package:EUIES_Web/Core/Widgets/app_menu_items.dart';
import 'package:EUIES_Web/Core/Widgets/app_name.dart';
import 'package:EUIES_Web/Presentation/Controllers/about_us_controller.dart';
import 'package:EUIES_Web/Presentation/Pages/AboutUs/Widgets/about_jumbo.dart';
import 'package:EUIES_Web/Presentation/Pages/Home/Widgets/jumbo_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  bool showFloatingButton = false;
  Color appBarBackGroundColor = Colors.black54;
  AboutUsController aboutUsController = Get.put(AboutUsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.BACKGROUND,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SizedBox(
          child: InkWell(child: AppName(), onTap: (){
            Get.offAllNamed(AppRoutes.HOME);
          },),
          height: context.width > 1080 ? 150 : 120,
        ),
        toolbarHeight: context.width > 1080 ? 120 : null,
        // actions: context.width > 1080 ? AppMenuItems() : null,
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
        controller: AboutUsController.to.scrollController.value,
        child: Column(
          children: [
            AboutJumbo(),
          ],
        ),
      ),
    );
  }
}
