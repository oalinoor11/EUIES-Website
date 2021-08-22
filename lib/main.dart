import 'package:EUIES_Web/Core/Utilities/AppRoutes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Core/Language/Language.dart';
import 'Core/Utilities/AppTheme.dart';
import 'Core/Utilities/exportutilities.dart';
import 'Presentation/Pages/exportpages.dart';
import 'Presentation/Pages/homescreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "EUIES Web",
      translations: Language(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      getPages: AppRoutes.routes,
      initialRoute: AppRoutes.HOMESCREEN,
      theme: AppTheme.theme,
    );
  }
}
