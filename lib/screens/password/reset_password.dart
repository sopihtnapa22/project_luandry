import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double cardHeight = MediaQuery.of(context).size.height * 0.5;

    return Scaffold(
      backgroundColor: Colors.white,

      body: Stack(
        children: [
          Positioned(top: 110, left: 0, right: 0, child: Image.asset('assets/reset_password.png', width: 200, height: 200)),
          Positioned(
            top: 340,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "Oops! Can’t remember your password? No worries — just enter your numberphone and we’ll help you reset it.",
                textAlign: TextAlign.center,
                style: GoogleFonts.habibi(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: cardHeight,

              decoration: BoxDecoration(
                color: const Color(0xFF4FC3F7),
                border: Border.all(color: Colors.grey.shade300, width: 4),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Reset Password", style: GoogleFonts.fredoka(fontSize: 26, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),

                  Text("Email", style: GoogleFonts.fredoka(fontSize: 18)),
                  const SizedBox(height: 8),

                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your email",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                  ),

                  const SizedBox(height: 25),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      onPressed: () {},
                      child: Text("Send Reset Link", style: GoogleFonts.fredoka(fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
