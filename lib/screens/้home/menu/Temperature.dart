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
          Positioned(
            top: 120,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 380,
                height: 220,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFF42BD41),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.15), blurRadius: 10, offset: const Offset(0, 5))],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 140,
                      height: 140,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: const Color(0xFF0D47A1), width: 6),
                      ),
                      child: Image.asset('assets/laundry(1).png', fit: BoxFit.contain),
                    ),
                    const SizedBox(width: 30),

                    Container(
                      width: 170,
                      height: 70,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                      decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0.1), borderRadius: BorderRadius.circular(40)),
                      child: Text(
                        machine.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
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

                    TemperatureOptionCard(
                      imagePath: 'assets/washing.png',
                      title: 'Water: cold',
                      time: 'time: 30m.',
                      price: '25.',
                      textColor: const Color(0xFF1A237E),
                    ),
                    const SizedBox(height: 25),
                    TemperatureOptionCard(
                      imagePath: 'assets/washing.png',
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
