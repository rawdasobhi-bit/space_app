import 'package:flutter/material.dart';
import 'package:space_app/utils/app_assets.dart';
import 'package:space_app/utils/app_colors.dart';
import 'package:space_app/utils/app_routes.dart';
import 'package:space_app/utils/app_strings.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.introBg, height: double.infinity),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    AppStrings.exploreTheUniverse,
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(AppRoutes.homeRoute);
                },
                child: Row(
                  children: [
                    Text(AppStrings.explore),
                    Spacer(),
                    Icon(Icons.arrow_forward, size: 30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}