import 'package:flutter/material.dart';
import 'package:space_app/utils/app_size.dart';

import '../../utils/app_assets.dart';

class DetailsTitleWidget extends StatelessWidget
    implements PreferredSizeWidget {
  double appBarHeight;
  String name;
  String title;

  DetailsTitleWidget({
    super.key,
    required this.appBarHeight,
    required this.name,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    double height = SizeConfig.height(context);
    double width = SizeConfig.width(context);
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
                Row(
                  spacing: width * .15,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(shape: CircleBorder()),
                      child: Icon(Icons.arrow_back),
                    ),
                    Text(
                      name,
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Text(title, style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, appBarHeight);
}