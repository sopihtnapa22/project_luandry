import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryCard extends StatelessWidget {
  final String date;
  final String machineNo;
  final String washType;
  final String timeRange;
  final String duration;
  final String total;
  final String imagePath;
  final Color iconBgColor;

  const HistoryCard({
    super.key,
    required this.date,
    required this.machineNo,
    required this.washType,
    required this.timeRange,
    required this.duration,
    required this.total,
    required this.imagePath,
    required this.iconBgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: const Color(0xFFF5F5F5), borderRadius: BorderRadius.circular(24)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 120,
            decoration: BoxDecoration(color: iconBgColor, borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(10),
            child: Image.asset(imagePath, width: 90, height: 100),
          ),
          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(date, style: GoogleFonts.fredoka(fontSize: 18, fontWeight: FontWeight.w500)),
                const SizedBox(height: 4),
                Text("• $washType  Machine $machineNo", style: GoogleFonts.fredoka(fontSize: 18, fontWeight: FontWeight.w500)),
                Text("  $timeRange • $duration", style: GoogleFonts.fredoka(fontSize: 18, fontWeight: FontWeight.w500)),
                Text("  Total: $total", style: GoogleFonts.fredoka(fontSize: 18, fontWeight: FontWeight.w500)),
                Text("  Status: Completed", style: GoogleFonts.fredoka(fontSize: 18, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
