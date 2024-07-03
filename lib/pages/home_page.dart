import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/utils/colors.dart';
import 'package:weather_app/widgets/location_search_bar.dart';
import 'package:weather_app/widgets/other_details.dart';
import 'package:weather_app/widgets/selected_location.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.sunny,
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              // Search Bar
              const LocationSearchBar(),

              const SizedBox(height: 25),

              // Searched Location -> icon + Location
              const SelectedLocation(),

              const SizedBox(height: 25),

              // Animation

              Lottie.asset(
                'assets/SunnyAnimation.json',
                height: 174,
                width: 174,
              ),

              const SizedBox(height: 15),

              // Temperature
              Text(
                '75°C',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 75),
              ),

              const SizedBox(height: 15),

              // Details
              Text(
                'Sunny',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 24),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Day and Date
                  Text(
                    'Monday, 1 April',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ],
              ),

              const SizedBox(height: 60),

              // Box Description
              const OtherDetails(),
            ],
          ),
        ),
      )),
    );
  }
}
