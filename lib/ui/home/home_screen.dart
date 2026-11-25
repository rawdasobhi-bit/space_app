import 'package:flutter/material.dart';
import 'package:space_app/ui/home/title_widget.dart';
import 'package:space_app/utils/app_routes.dart';
import 'package:space_app/utils/app_strings.dart';

import '../../models/planet_model.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController(initialPage: 0);

  int index = 0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(listenOnPageChange);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TitleWidget(),
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: Planet.planets.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset(Planet.planets[index].image),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (pageController.page!.toInt() == 0) {
                      return;
                    }
                    pageController.animateToPage(
                      pageController.page!.toInt() - 1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(shape: CircleBorder()),
                  child: Icon(Icons.arrow_back),
                ),
                Text(
                  Planet.planets[index].name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (pageController.page!.toInt() == 8) {
                      return;
                    }
                    pageController.animateToPage(
                      pageController.page!.toInt() + 1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(shape: CircleBorder()),
                  child: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.detailsRoute,
                  arguments: Planet.planets[index],
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Text("${AppStrings.explore} ${Planet.planets[index].name}"),
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

  void listenOnPageChange() {
    if (pageController.page! % 1 == 0) {
      index = pageController.page!.toInt();
    }
    setState(() {});
  }
}