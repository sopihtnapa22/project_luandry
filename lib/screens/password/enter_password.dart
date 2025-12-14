import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnterPassword extends StatelessWidget {
  const EnterPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final double cardHeight = MediaQuery.of(context).size.height * 0.45;

    return Scaffold(
      backgroundColor: Colors.white,

      body: Stack(
        children: [
          Positioned(top: 110, left: 0, right: 0, child: Image.asset('assets/enter_password.png', width: 200, height: 200)),
          Positioned(
            top: 340,
            left: 0,
            right: 0,

            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Please enter your password to continue.",
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
                border: Border(top: BorderSide(color: Colors.grey.shade300, width: 4)),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  const SizedBox(height: 10),
                  Text(
                    "Enter password",
                    style: GoogleFonts.fredoka(fontSize: 28, fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                  const SizedBox(height: 50),

                  SizedBox(
                    width: 360,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "New password...",
                        hintStyle: GoogleFonts.fredoka(fontSize: 24, color: Color(0xFFBDBDBD), fontWeight: FontWeight.w500),
                        filled: true,
                        fillColor: Colors.white,

                        enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xFFBDBDBD), width: 1)),

                        focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xFFBDBDBD), width: 1)),
                        contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: 360,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Confirm password...",
                        hintStyle: GoogleFonts.fredoka(fontSize: 24, color: Color(0xFFBDBDBD), fontWeight: FontWeight.w500),
                        filled: true,
                        fillColor: Colors.white,

                        enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xFFBDBDBD), width: 1)),

                        focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xFFBDBDBD), width: 1)),
                        contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 70),

                  SizedBox(
                    height: 50,
                    width: 220,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF039BE5),
                        side: const BorderSide(color: Colors.white, width: 2),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Reset password",
                        style: GoogleFonts.fredoka(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
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
