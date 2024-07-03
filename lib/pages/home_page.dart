import 'package:flutter/material.dart';
import 'package:weather_app/utils/colors.dart';
import 'package:weather_app/widgets/location_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.sunny,
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.all(10),
        child: const Column(
          children: [
            // Search Bar
            LocationSearchBar()

            // icon + Location

            // Animation

            // Temperature

            // Details
          ],
        ),
      )),
    );
  }
}
