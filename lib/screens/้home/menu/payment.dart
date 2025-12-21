import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatelessWidget {
  final String machineName;
  final String waterTemp;
  final String time;
  final String price;

  const PaymentScreen({super.key, required this.machineName, required this.waterTemp, required this.time, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(height: 20),
            // --- ปุ่มเลือกช่องทางการชำระเงิน ---
            _buildPaymentMethod('เงินสด'),
            const SizedBox(height: 15),
            _buildPaymentMethod('PromptPay'),
            const SizedBox(height: 15),
            _buildPaymentMethod('Wallet'),

            const Spacer(),

            // --- กล่องสรุปรายการ (สีฟ้าอ่อน) ---
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: const Color(0xFFE8EAF6),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 5))],
              ),
              child: Column(
                children: [
                  Text(
                    'Water: $waterTemp',
                    style: GoogleFonts.fredoka(fontSize: 28, fontWeight: FontWeight.bold, color: const Color(0xFF1A237E)),
                  ),
                  Text(
                    'time: $time',
                    style: GoogleFonts.fredoka(fontSize: 28, fontWeight: FontWeight.bold, color: const Color(0xFF1A237E)),
                  ),
                  Text(
                    price,
                    style: GoogleFonts.fredoka(fontSize: 28, fontWeight: FontWeight.bold, color: const Color(0xFF1A237E)),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // --- ปุ่ม Confirm Order ---
            SizedBox(
              width: double.infinity,
              height: 65,
              child: ElevatedButton(
                onPressed: () {
                  // ใส่ Logic เมื่อจ่ายเงินสำเร็จที่นี่
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1A237E),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
                  elevation: 5,
                ),
                child: Text(
                  'Confirm Order',
                  style: GoogleFonts.fredoka(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  // Widget สำหรับสร้างปุ่มตัวเลือกชำระเงิน
  Widget _buildPaymentMethod(String label) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.03), blurRadius: 5, offset: const Offset(0, 2))],
      ),
      child: Center(
        child: Text(
          label,
          style: GoogleFonts.fredoka(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ),
    );
  }
}
