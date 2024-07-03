
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/utils/colors.dart';

class OtherDetails extends StatelessWidget {
  const OtherDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
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
        mainAxisAlignment: MainAxisAlignment.center,
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
              const Icon(
                Icons.wind_power,
                color: Colors.white,
                size: 30,
              ),
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
    
          const SizedBox(height: 24),
    
          // Detail 2
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Humidity',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                  )),
              const SizedBox(width: 35),
              const Icon(
                Icons.water_drop,
                size: 30,
                color: Colors.white,
              ),
              const SizedBox(width: 35),
              Text(
                '10%',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            ],
          ),
    
          const SizedBox(height: 24),
    
          // Detail 3
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Feels Like',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 15,
                  )),
              const SizedBox(width: 35),
              const Icon(
                Icons.thermostat,
                size: 30,
                color: Colors.white,
              ),
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
    );
  }
}
