import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 520,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/wave_dark.png',
              width: double.infinity,
              height: 470,
              fit: BoxFit.fill, // <<< บังคับรูปให้ยืดเต็มตามกรอบ
            ),
          ),

          Positioned(
            top: 550,
            left: 0,
            right: 0,
            child: Image.asset('assets/wave_light.png', width: double.infinity, height: 390, fit: BoxFit.fill),
          ),

          // เนื้อหาหน้า Onboarding
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(height: 120),
                Text("Hello Onboarding", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
