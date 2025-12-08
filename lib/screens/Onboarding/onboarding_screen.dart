import 'package:flutter/material.dart';
import 'package:project_luandry/screens/login/login_screen.dart';

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

          Positioned.fill(
            child: Column(
              children: [
                SizedBox(height: 120),
                Text(
                  "huangluandry",
                  style: TextStyle(fontFamily: "Lemonada", fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF4FC3F7)),
                ),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [SizedBox(height: 80), Image.asset('assets/laundry.png', width: 250, height: 250)],
                  ),
                ),
                SizedBox(height: 170),
                Center(
                  child: Text(
                    'Fresh laundry, delivered to your door. Fast pickup, professional cleaning, and easy tracking — all in one app.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black, fontFamily: 'Roboto'),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Color(0xFF4FC3F7),

                    minimumSize: const Size(200, 60),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                    elevation: 5,
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 30, fontFamily: 'LeagueSpartan', fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
