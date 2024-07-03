import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/utils/colors.dart';

class LocationSearchBar extends StatefulWidget {
  const LocationSearchBar({
    super.key,
  });

  @override
  State<LocationSearchBar> createState() => _LocationSearchBarState();
}

class _LocationSearchBarState extends State<LocationSearchBar> {
  final searchLocation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colours.searchBar,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(5, 5),
              blurRadius: 5,
              spreadRadius: 1,
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            // Icon
            const Icon(
              Icons.search,
              color: Colors.black,
              size: 35,
            ),

            const SizedBox(width: 15),

            // Search Text
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: TextField(
                  controller: searchLocation,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Location',
                      hintStyle: GoogleFonts.poppins(
                        color: const Color(0xFF7D7D7D),
                        fontSize: 20,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
