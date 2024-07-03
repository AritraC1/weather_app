import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
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
        child: Column(
          children: [
            // Search Bar
            const LocationSearchBar(),

            const SizedBox(height: 25),

            // icon + Location
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                  size: 40,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'New Delhi',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),

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
            Container(
              padding: const EdgeInsets.all(20),
              height: 170,
              width: 300,
              decoration: BoxDecoration(
                color: Colours.sunny,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(5, 5),
                    blurRadius: 5,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Column(
                children: [
                  // Detail 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Wind',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                          )),
                      const SizedBox(width: 35),
                      const Icon(Icons.wind_power),
                      const SizedBox(width: 35),
                      Text(
                        '5 Km/hr',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                    ],
                  ),

                  const SizedBox(height: 26),

                  // Detail 2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Wind',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                          )),
                      const SizedBox(width: 35),
                      const Icon(Icons.wind_power),
                      const SizedBox(width: 35),
                      Text(
                        '5 Km/hr',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                    ],
                  ),

                  const SizedBox(height: 26),

                  // Detail 3
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Wind',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                          )),
                      const SizedBox(width: 35),
                      const Icon(Icons.wind_power),
                      const SizedBox(width: 35),
                      Text(
                        '5 Km/hr',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
