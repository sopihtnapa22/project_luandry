import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_luandry/screens/%E0%B9%89home/history.dart';
import 'package:project_luandry/screens/%E0%B9%89home/Order.dart';
import 'package:project_luandry/screens/%E0%B9%89home/menu/menu_wash.dart';
import 'package:project_luandry/screens/%E0%B9%89home/profile.dart';
import 'package:project_luandry/widgets/card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _onItemTapped(BuildContext context, int index) {
    if (index == 1) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => const OrderScreen()));
    } else if (index == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => const HistoryScreen()));
    } else if (index == 3) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfileScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0F7FA),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 12),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(color: const Color(0xFFB2EBF2), borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, color: Colors.black),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello 👋", style: GoogleFonts.fredoka(fontSize: 18, fontWeight: FontWeight.w600)),
                        Text("xxx-xxx-xxxx", style: GoogleFonts.fredoka(fontSize: 14)),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              Container(
                height: 120,
                width: 350,
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: .15), blurRadius: 10, offset: const Offset(0, 6))],
                ),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      style: GoogleFonts.fredoka(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
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
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WashingMenuScreen()));
                },
                child: InfoCard(title: 'Wash clothes', subtitle: 'ซักผ้า', imagePath: 'assets/wash.png'),
              ),

              const SizedBox(height: 30),

              InfoCard(imagePath: 'assets/quick-dry.png', title: 'Dry clothes', subtitle: 'อบผ้า'),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        onTap: (index) => _onItemTapped(context, index),
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
