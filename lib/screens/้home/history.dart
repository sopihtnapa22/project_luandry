import 'package:flutter/material.dart';
import 'package:project_luandry/widgets/history_card.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
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
              const SizedBox(height: 20),

              Expanded(
                child: ListView(
                  padding: const EdgeInsets.only(top: 12),
                  children: const [
                    HistoryCard(
                      date: "12 Feb 2025",
                      machineNo: "03",
                      washType: "Wash (Warm Water)",
                      timeRange: "13:20 -> 13:50",
                      duration: "30 min",
                      total: "฿30",
                      iconBgColor: Color(0xFFFFF9C4),
                      imagePath: "assets/laundry(1).png",
                    ),
                    SizedBox(height: 25),
                    HistoryCard(
                      date: "12 Feb 2025",
                      machineNo: "03",
                      washType: "Wash (Cold Water)",
                      timeRange: "13:20 -> 13:50",
                      duration: "30 min",
                      total: "฿25",
                      iconBgColor: Color(0xFFE8EAF6),
                      imagePath: "assets/laundry(1).png",
                    ),
                    SizedBox(height: 25),
                    HistoryCard(
                      date: "11 Feb 2025",
                      machineNo: "03",
                      washType: "Wash (Warm Water)",
                      timeRange: "13:20 -> 13:50",
                      duration: "30 min",
                      total: "฿40",
                      iconBgColor: Color(0xFFE8EAF6),
                      imagePath: "assets/dry.png",
                    ),
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
