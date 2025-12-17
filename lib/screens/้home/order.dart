import 'package:flutter/material.dart';

import 'package:project_luandry/widgets/order_card.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

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
                    OrderCard(
                      machineNo: "04",
                      washType: "Warm Water",
                      timeLeft: "18 min",
                      startTime: "14:12",
                      finishTime: "14:42",
                      iconBgColor: Color(0xFFFFF9C4),
                      imagesParth: "assets/laundry(1).png",
                    ),
                    SizedBox(height: 25),
                    OrderCard(
                      machineNo: "06",
                      washType: "Cold Water",
                      timeLeft: "18 min",
                      startTime: "14:12",
                      finishTime: "14:42",
                      iconBgColor: Color(0xFFE8EAF6),
                      imagesParth: "assets/laundry(1).png",
                    ),
                    SizedBox(height: 25),
                    OrderCard(
                      machineNo: "05",
                      washType: "Dry",
                      timeLeft: "18 min",
                      startTime: "14:12",
                      finishTime: "14:42",
                      iconBgColor: Color(0xFFE8EAF6),
                      imagesParth: "assets/dry.png",
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
