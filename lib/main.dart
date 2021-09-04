import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Core/Language/Language.dart';
import 'Core/Utilities/exportutilities.dart';
import 'Presentation/Pages/exportpages.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "INITIAL APP",
      translations: Language(),
      locale: AppLocales.ENGLISH,
      fallbackLocale: AppLocales.ENGLISH,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      getPages: AppRoutes.routes,
      initialRoute: AppRoutes.INITIAL,
      theme: AppTheme.theme(),
    );
  }
}
