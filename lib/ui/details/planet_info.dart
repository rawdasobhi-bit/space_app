import 'package:flutter/material.dart';

class PlanetInfo extends StatelessWidget {
  final String title;
  final String value;

  const PlanetInfo({super.key, required this.title, this.value = "6"});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        "$title: $value",
        style: Theme.of(
          context,
        ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}