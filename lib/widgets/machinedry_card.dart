import 'package:flutter/material.dart';
import 'package:project_luandry/screens/%E0%B9%89home/menu/machinewash_model.dart';
import 'package:project_luandry/screens/%E0%B9%89home/menu/payment.dart';

class DryMachineCard extends StatelessWidget {
  final WashingMachine machine;

  const DryMachineCard({super.key, required this.machine});

  @override
  Widget build(BuildContext context) {
    final Color statusColor = machine.isAvailable ? const Color(0xFF42BD41) : const Color(0xFFE84E40);
    return InkWell(
      onTap: () {
        if (machine.isAvailable) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PaymentScreen(
                machineName: machine.name,
                waterTemp: 'Dry Only', // สำหรับเครื่องอบจะไม่มีอุณหภูมิน้ำ
                time: '40m.', // ตั้งค่าเวลาอบผ้า
                price: '40.', // ตั้งราคาอบผ้า
              ),
            ),
          );
        } else {
          // แจ้งเตือนถ้าเครื่องไม่ว่าง
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('เครื่องอบนี้กำลังทำงานอยู่')));
        }
      },

      child: Container(
        width: 120,
        height: 170,
        decoration: BoxDecoration(
          color: statusColor,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: .15), blurRadius: 8, offset: const Offset(0, 4))],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 130,
              height: 130,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: const Color(0xFF0D47A1), width: 8),
              ),
              child: Image.asset('assets/dry.png'),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0.2), borderRadius: BorderRadius.circular(40)),
              child: Text(
                machine.name,
                style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
