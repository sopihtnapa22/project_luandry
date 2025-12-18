import 'package:flutter/material.dart';
import 'package:project_luandry/screens/%E0%B9%89home/menu/machinewash_model.dart';
import 'package:project_luandry/widgets/machinedry_card.dart';

class DryMenuScreen extends StatelessWidget {
  DryMenuScreen({super.key});

  final List<WashingMachine> machines = [
    WashingMachine(name: 'เครื่อง1', isAvailable: true),
    WashingMachine(name: 'เครื่อง2', isAvailable: true),
    WashingMachine(name: 'เครื่อง3', isAvailable: true),
    WashingMachine(name: 'เครื่อง4', isAvailable: false),
    WashingMachine(name: 'เครื่อง5', isAvailable: true),
    WashingMachine(name: 'เครื่อง6', isAvailable: false),
  ];

  @override
  Widget build(BuildContext context) {
    const Color primaryBlue = Color(0xFF4FC3F7);

    final double cardHeight = MediaQuery.of(context).size.height * 0.85;

    return Scaffold(
      backgroundColor: primaryBlue,
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 20,
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: cardHeight,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              ),

              child: Column(
                children: [
                  const SizedBox(height: 30),

                  Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        childAspectRatio: 0.85,
                      ),
                      itemCount: machines.length,
                      itemBuilder: (context, index) {
                        return DryMachineCard(machine: machines[index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
