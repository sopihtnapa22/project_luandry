import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0F7FA),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              /// ===== Back Button =====
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),

              const SizedBox(height: 12),

              /// ===== Title =====
              Align(
                alignment: Alignment.centerLeft,
                child: Text("My Orders", style: GoogleFonts.fredoka(fontSize: 32, fontWeight: FontWeight.bold)),
              ),

              const SizedBox(height: 24),

              /// ===== Order Cards =====
              const OrderCard(title: "Wash Clothes", status: "In Progress", statusColor: Colors.orange),

              const SizedBox(height: 16),

              const OrderCard(title: "Dry Clothes", status: "Waiting", statusColor: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}

/// ===== Order Card =====
class OrderCard extends StatelessWidget {
  final String title;
  final String status;
  final Color statusColor;

  const OrderCard({super.key, required this.title, required this.status, required this.statusColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [BoxShadow(color: Color.fromARGB(40, 0, 0, 0), blurRadius: 10, offset: Offset(0, 4))],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: GoogleFonts.fredoka(fontSize: 20, fontWeight: FontWeight.bold)),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            decoration: BoxDecoration(color: statusColor.withAlpha(40), borderRadius: BorderRadius.circular(20)),
            child: Text(
              status,
              style: GoogleFonts.fredoka(fontSize: 14, fontWeight: FontWeight.bold, color: statusColor),
            ),
          ),
        ],
      ),
    );
  }
}
