import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_luandry/screens/%E0%B9%89home/menu/machinewash_model.dart';
import 'package:project_luandry/widgets/Temperature_option.dart';

class TemperatureSelectionScreen extends StatelessWidget {
  final WashingMachine machine;

  const TemperatureSelectionScreen({super.key, required this.machine});

  @override
  Widget build(BuildContext context) {
    final double cardHeight = MediaQuery.of(context).size.height * 0.55;
    const Color primaryBlue = Color(0xFF4FC3F7);
    return Scaffold(
      backgroundColor: primaryBlue,
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 20,
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: cardHeight,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              ),

              child: SingleChildScrollView(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Text(
                      'Choose Water\nTemperature',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.fredoka(fontSize: 32, fontWeight: FontWeight.bold, color: const Color(0xFF4FC3F7), height: 1.1),
                    ),
                    const SizedBox(height: 40),

                    // ตัวเลือกน้ำเย็น
                    TemperatureOptionCard(
                      imagePath: 'assets/wash.png',
                      title: 'Water: cold',
                      time: 'time: 30m.',
                      price: '25.',
                      textColor: const Color(0xFF1A237E),
                    ),
                    const SizedBox(height: 25),
                    TemperatureOptionCard(
                      imagePath: 'assets/wash.png',
                      title: 'Water: hot',
                      time: 'time: 30m.',
                      price: '30.',
                      textColor: const Color(0xFFFBC02D),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                icon: const Icon(Icons.undo, color: Colors.black),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(color: const Color(0xFF42BD41), borderRadius: BorderRadius.circular(35)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.local_laundry_service, size: 50, color: Colors.white),
                const SizedBox(width: 15),
                Text(
                  machine.name,
                  style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
