import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0F7FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFF4FC3F7),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "History",
          style: GoogleFonts.fredoka(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            HistoryCard(title: "Wash Clothes", date: "12 Sep 2025", status: "Completed"),
            SizedBox(height: 16),
            HistoryCard(title: "Dry Clothes", date: "10 Sep 2025", status: "Completed"),
            SizedBox(height: 16),
            HistoryCard(title: "Wash + Dry", date: "8 Sep 2025", status: "Completed"),
          ],
        ),
      ),
    );
  }
}

class HistoryCard extends StatelessWidget {
  final String title;
  final String date;
  final String status;

  const HistoryCard({super.key, required this.title, required this.date, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 8, offset: const Offset(0, 4))],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: GoogleFonts.fredoka(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              Text(date, style: GoogleFonts.fredoka(fontSize: 14, color: Colors.grey)),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            decoration: BoxDecoration(color: Colors.greenAccent.shade100, borderRadius: BorderRadius.circular(20)),
            child: Text(
              status,
              style: GoogleFonts.fredoka(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
