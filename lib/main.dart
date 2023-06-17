import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/route/app_page.dart';
import 'package:my_ecommerce/route/app_route.dart';
import 'package:my_ecommerce/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      getPages: AppRoute.list,
      initialRoute: AppRoute.getdashboard(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
    );
  }
}


