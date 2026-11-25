import 'package:flutter/material.dart';
import 'package:space_app/utils/app_size.dart';

import '../../utils/app_assets.dart';
import '../../utils/app_strings.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = SizeConfig.height(context);
    return Stack(
      children: [
        Image.asset(AppImages.moon),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              spacing: height * .12,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  AppStrings.explore,
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                Text(
                  AppStrings.homeTitleQuestion,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}