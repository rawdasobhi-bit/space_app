import 'package:flutter/material.dart';
import 'package:space_app/ui/details/details_screen.dart';
import 'package:space_app/ui/home/home_screen.dart';
import 'package:space_app/ui/intro_screen/intro_screen.dart';
import 'package:space_app/utils/app_routes.dart';
import 'package:space_app/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      initialRoute: AppRoutes.introRoute,
      routes: {
        AppRoutes.introRoute: (context) => IntroductionScreen(),
        AppRoutes.homeRoute: (context) => HomeScreen(),
        AppRoutes.detailsRoute: (context) => DetailsScreen(),
      },
    );
  }
}