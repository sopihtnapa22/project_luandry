import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_luandry/screens/%E0%B9%89home/menu/payment.dart';

class TemperatureOptionCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String time;
  final String price;
  final Color textColor;

  const TemperatureOptionCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.time,
    required this.price,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    // 1. เพิ่ม return InkWell ครอบ Container เดิมไว้ (เริ่มที่บรรทัด 20)
    return InkWell(
      onTap: () {
        // คำสั่งสำหรับเปิดหน้าจ่ายเงิน
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PaymentScreen(
              waterTemp: title,
              time: time,
              price: price,
              machineName: '', // หรือส่งชื่อเครื่องตามต้องการ
            ),
          ),
        );
      },
      child: Container(
        // นี่คือ Container เดิมของคุณ
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color(0xFFF8F9FA),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 10, offset: const Offset(0, 4))],
        ),
        child: Row(
          children: [
            Image.asset(imagePath, width: 90, height: 90),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.fredoka(color: textColor, fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    time,
                    style: GoogleFonts.fredoka(color: textColor, fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    price,
                    style: GoogleFonts.fredoka(color: textColor, fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ); // อย่าลืมใส่เครื่องหมายปิดของ InkWell
  }
}
