import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectedLocation extends StatelessWidget {
  const SelectedLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Icon
        const Icon(
          Icons.location_on_outlined,
          color: Colors.white,
          size: 40,
        ),
        const SizedBox(width: 10),

        // Variable Location
        Text(
          'New Delhi',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
