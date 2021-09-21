import 'package:EUIES_Web/Core/Utilities/AppRoutes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:EUIES_Web/Core/Language/Language.dart';
import 'package:EUIES_Web/Core/Utilities/AppLocales.dart';
import 'package:EUIES_Web/Core/Utilities/AppTheme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "EUIES International Education Service",

      translations: Language(),
      locale: AppLocales.ENGLISH,
      fallbackLocale: AppLocales.ENGLISH,
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      getPages: AppRoutes.routes,
      initialRoute: AppRoutes.HOME,
      theme: AppTheme.theme(),

    );
  }
}
