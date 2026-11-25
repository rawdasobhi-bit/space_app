import 'package:flutter/material.dart';
import 'package:space_app/ui/details/details_title_widget.dart';
import 'package:space_app/ui/details/planet_info.dart';

import '../../models/planet_model.dart';
import '../../utils/app_size.dart';
import '../../utils/app_strings.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as Planet;

    double height = SizeConfig.height(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: DetailsTitleWidget(
              appBarHeight: height * .3,
              name: args.name,
              title: args.title,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset(args.image),
                ),
                Text(
                  AppStrings.about,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 8),
                Text(args.about, style: Theme.of(context).textTheme.bodyLarge),
                SizedBox(height: 8),
                PlanetInfo(
                  title: AppStrings.distanceFromSun,
                  value: args.distanceFromSun,
                ),
                PlanetInfo(
                  title: AppStrings.lengthOfDay,
                  value: args.lengthOfDay,
                ),
                PlanetInfo(
                  title: AppStrings.orbitalPeriod,
                  value: args.orbitalPeriod,
                ),
                PlanetInfo(title: AppStrings.radius, value: args.radius),
                PlanetInfo(title: AppStrings.mass, value: args.mass),
                PlanetInfo(title: AppStrings.gravity, value: args.gravity),
                PlanetInfo(
                  title: AppStrings.surfaceArea,
                  value: args.surfaceArea,
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}