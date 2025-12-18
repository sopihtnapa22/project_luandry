import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TemperatureOptionCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String time;
  final String price;
  final Color textColor;

  const TemperatureOptionCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.time,
    required this.price,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FA),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 4))],
      ),
      child: Row(
        children: [
          Image.asset(imagePath, width: 90, height: 90),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.fredoka(color: textColor, fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  time,
                  style: GoogleFonts.fredoka(color: textColor, fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  price,
                  style: GoogleFonts.fredoka(color: textColor, fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
