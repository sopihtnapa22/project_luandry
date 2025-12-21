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
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 20,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  // เว้นที่ไว้ 80 เพื่อไม่ให้เนื้อหาไปทับปุ่มย้อนกลับที่อยู่ชั้นล่างกว่าในโค้ด
                  const SizedBox(height: 80),

                  // --- ปุ่มเลือกช่องทางการชำระเงิน ---
                  _buildPaymentMethod('เงินสด'),
                  const SizedBox(height: 30),
                  _buildPaymentMethod('PromptPay'),
                  const SizedBox(height: 30),
                  _buildPaymentMethod('Wallet'),

                  const Spacer(),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE8EAF6),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: .05), blurRadius: 10, offset: const Offset(0, 5))],
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Water: $waterTemp',
                          style: GoogleFonts.fredoka(fontSize: 28, fontWeight: FontWeight.bold, color: const Color(0xFF1A237E)),
                        ),
                        Text(
                          ' $time',
                          style: GoogleFonts.fredoka(fontSize: 28, fontWeight: FontWeight.bold, color: const Color(0xFF1A237E)),
                        ),
                        Text(
                          price,
                          style: GoogleFonts.fredoka(fontSize: 28, fontWeight: FontWeight.bold, color: const Color(0xFF1A237E)),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 80),

                  // --- ปุ่ม Confirm Order ---
                  SizedBox(
                    width: double.infinity,
                    height: 65,
                    child: ElevatedButton(
                      onPressed: () {
                        // Logic เมื่อจ่ายเงินสำเร็จ
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
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentMethod(String label) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: .03), blurRadius: 5, offset: const Offset(0, 2))],
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
