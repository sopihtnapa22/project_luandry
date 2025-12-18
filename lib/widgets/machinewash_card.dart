import 'package:flutter/material.dart';
import 'package:project_luandry/screens/%E0%B9%89home/menu/Temperature.dart';
import 'package:project_luandry/screens/%E0%B9%89home/menu/machinewash_model.dart';

class MachineCard extends StatelessWidget {
  final WashingMachine machine;

  const MachineCard({super.key, required this.machine});

  @override
  Widget build(BuildContext context) {
    final Color statusColor = machine.isAvailable ? const Color(0xFF42BD41) : const Color(0xFFE84E40);
    return InkWell(
      onTap: () {
        // เช็คว่าถ้าเครื่องว่าง (isAvailable == true) ถึงจะกดไปหน้าถัดไปได้
        if (machine.isAvailable) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => TemperatureSelectionScreen(machine: machine)));
        } else {
          // ถ้าเครื่องไม่ว่าง ให้แสดงแจ้งเตือนสั้นๆ
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('เครื่องนี้กำลังทำงานอยู่ครับ')));
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
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: const Color(0xFF0D47A1), width: 8),
              ),
              child: Image.asset('assets/laundry(1).png'),
              width: 130,
              height: 130,
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
