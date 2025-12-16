import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0F7FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFF4FC3F7),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Profile",
          style: GoogleFonts.fredoka(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, size: 60, color: Colors.white),
            ),
            const SizedBox(height: 16),
            Text("Username", style: GoogleFonts.fredoka(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Text("xxx-xxx-xxxx", style: GoogleFonts.fredoka(fontSize: 16, color: Colors.grey)),
            const SizedBox(height: 30),
            _ProfileItem(title: "Edit Profile"),
            _ProfileItem(title: "Payment Method"),
            _ProfileItem(title: "Settings"),
            _ProfileItem(title: "Logout"),
          ],
        ),
      ),
    );
  }
}

class _ProfileItem extends StatelessWidget {
  final String title;
  const _ProfileItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Text(title, style: GoogleFonts.fredoka(fontSize: 18)),
    );
  }
}
