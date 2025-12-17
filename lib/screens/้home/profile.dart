import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(left: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.15), blurRadius: 8, spreadRadius: 1, offset: const Offset(0, 4))],
                  ),

                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ),
              const SizedBox(height: 40),

              Container(
                height: 220,
                width: 320,
                padding: const EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(color: const Color(0xFF4FC3F7), borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Color(0xFFE0E0E0),
                      child: Icon(Icons.person, size: 55, color: Colors.white),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "XXX-XXX-XXXX",
                      style: GoogleFonts.fredoka(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              Container(
                height: 450,
                width: 320,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1), // สีเงาดำจางๆ
                      blurRadius: 20, // ความฟุ้งของเงา
                      spreadRadius: 2, // การกระจายของเงา
                      offset: const Offset(0, 10), // เลื่อนเงาลงด้านล่าง (x=0, y=8)
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Account Settings", style: GoogleFonts.fredoka(fontSize: 18, fontWeight: FontWeight.w500)),
                    const SizedBox(height: 12),
                    const _ProfileItem(title: "Edit Profile"),
                    const _ProfileItem(title: "Change Password"),
                    const _ProfileItem(title: "Notification Settings"),

                    const SizedBox(height: 10),

                    Text("Support", style: GoogleFonts.fredoka(fontSize: 18, fontWeight: FontWeight.w500)),
                    const SizedBox(height: 12),
                    const _ProfileItem(title: "Help Center"),
                    const _ProfileItem(title: "Terms & Conditions"),
                    const _ProfileItem(title: "Privacy Policy"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// การปรับดีไซน์ปุ่มเมนูย่อยด้านใน (ให้เป็นแท่งสีเทาตามรูป)
class _ProfileItem extends StatelessWidget {
  final String title;
  const _ProfileItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 280,
      margin: const EdgeInsets.only(bottom: 10),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 18),
      decoration: BoxDecoration(color: const Color(0xFFE0E0E0)),
      child: Text(title, style: GoogleFonts.fredoka(fontSize: 14, fontWeight: FontWeight.w600)),
    );
  }
}
