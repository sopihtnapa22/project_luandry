import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderCard extends StatelessWidget {
  final String machineNo;
  final String washType;
  final String timeLeft;
  final String startTime;
  final String finishTime;
  final Color iconBgColor;
  final String imagesParth;

  const OrderCard({
    super.key,
    required this.machineNo,
    required this.washType,
    required this.timeLeft,
    required this.startTime,
    required this.finishTime,
    required this.iconBgColor,
    required this.imagesParth,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(color: const Color(0xFFF5F5F5), borderRadius: BorderRadius.circular(24)),
          child: Row(
            children: [
              // ส่วนรูปภาพทางซ้าย
              Container(
                width: 100,
                height: 120,
                decoration: BoxDecoration(color: iconBgColor, borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsets.all(10),
                child: Image.asset(imagesParth, width: 90, height: 100),
              ),
              const SizedBox(width: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildInfoText("Machine No. $machineNo", isBold: true),
                    _buildInfoText("Wash Type: $washType"),
                    _buildInfoText("Time Left: $timeLeft"),
                    _buildInfoText("Start Time: $startTime"),
                    _buildInfoText("Finish at: $finishTime"),
                  ],
                ),
              ),
            ],
          ),
        ),

        Positioned(
          top: -15,
          left: -12,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              const Icon(Icons.notifications_none_rounded, size: 35, color: Colors.black),

              Positioned(
                top: 2,
                right: -4,
                child: Container(
                  width: 20,
                  height: 9,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1.5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInfoText(String text, {bool isBold = false}) {
    return Text(
      text,
      style: GoogleFonts.fredoka(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
    );
  }
}
