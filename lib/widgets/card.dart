import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const InfoCard({super.key, required this.imagePath, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 350,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Color(0xFF4FC3F7), borderRadius: BorderRadius.circular(50)),
      child: Row(
        children: [
          Image.asset(imagePath, width: 70, height: 70),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.fredoka(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF1A237E)),
                ),
                const SizedBox(height: 6),
                Text(
                  subtitle,
                  style: GoogleFonts.fredoka(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF1A237E)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
