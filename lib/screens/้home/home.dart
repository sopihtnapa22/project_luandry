import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0F7FA),

      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 12),

            Container(
              width: double.infinity,
              height: 65,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(color: const Color(0xFFB2EBF2), borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.black),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello 👋", style: GoogleFonts.fredoka(fontSize: 20, fontWeight: FontWeight.w600)),
                      Text("xxx-xxx-xxxx", style: GoogleFonts.fredoka(fontSize: 18, color: Colors.black)),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 60),

            Container(
              height: 120,
              width: 380,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.25), blurRadius: 4, spreadRadius: 4, offset: const Offset(0, 7))],
              ),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.fredoka(fontSize: 36, color: Colors.blue, fontWeight: FontWeight.bold),
                    children: const [
                      TextSpan(text: "Active Orders: 1 "),
                      TextSpan(
                        text: "! !",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _ServiceCard(titleEn: "wash clothes", titleTh: "ซักผ้า", imagePath: 'assets/wash.png'),
            ),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _ServiceCard(titleEn: "dry clothes", titleTh: "อบผ้า", imagePath: 'assets/quick-dry.png'),
            ),
          ],
        ),
      ),

      /// ===== Bottom Navigation =====
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}

class _ServiceCard extends StatelessWidget {
  final String titleEn;
  final String titleTh;
  final String imagePath;

  const _ServiceCard({required this.titleEn, required this.titleTh, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(color: const Color(0xFF4FC3F7), borderRadius: BorderRadius.circular(50)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            titleEn,
            style: GoogleFonts.fredoka(fontSize: 34, fontWeight: FontWeight.w700, color: Color(0xFF1A237E)),
          ),

          Text(
            titleTh,
            style: GoogleFonts.fredoka(fontSize: 34, color: Color(0xFF1A237E), fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 1.5),
          Image.asset(imagePath, width: 100, height: 90, fit: BoxFit.contain),
        ],
      ),
    );
  }
}
