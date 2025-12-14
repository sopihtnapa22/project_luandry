import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double signupCardHeight = MediaQuery.of(context).size.height * 0.8;

    return Scaffold(
      backgroundColor: const Color(0xFF4FC3F7),
      body: Stack(
        children: [
          Positioned(top: 160, left: 0, right: 0, child: Padding(padding: const EdgeInsets.only(top: 20))),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: signupCardHeight,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: Colors.grey.shade300, width: 4)),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.inter(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                  ),

                  const SizedBox(height: 60),

                  SizedBox(
                    width: 360,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "phone...",
                        hintStyle: GoogleFonts.fredoka(fontSize: 20, color: const Color(0xFFBDBDBD)),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFBDBDBD), width: 1)),
                        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFBDBDBD), width: 1)),
                        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      ),
                    ),
                  ),

                  const SizedBox(height: 60),

                  SizedBox(
                    width: 360,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "password...",
                        hintStyle: GoogleFonts.fredoka(fontSize: 20, color: const Color(0xFFBDBDBD)),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFBDBDBD), width: 1)),
                        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFBDBDBD), width: 1)),
                        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      ),
                    ),
                  ),

                  const SizedBox(height: 60),
                  SizedBox(
                    width: 360,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "confirm password...",
                        hintStyle: GoogleFonts.fredoka(fontSize: 20, color: const Color(0xFFBDBDBD)),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFBDBDBD), width: 1)),
                        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFBDBDBD), width: 1)),
                        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 110),

                  SizedBox(
                    height: 70,
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4FC3F7),
                        side: const BorderSide(color: Color(0xFF039BE5), width: 2),
                      ),
                      onPressed: () {},
                      child: Text(
                        "sing up",
                        style: GoogleFonts.fredoka(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
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
