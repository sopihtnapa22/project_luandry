import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatelessWidget {
  final String machineName;
  final String waterTemp;
  final String time;
  final String price;

  // 1. สร้างตัวแปรเก็บสถานะการเลือก (ValueNotifier)
  final ValueNotifier<String> selectedMethod = ValueNotifier<String>('');

  PaymentScreen({super.key, required this.machineName, required this.waterTemp, required this.time, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // ปุ่มย้อนกลับ
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

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const SizedBox(height: 80),

                  ValueListenableBuilder(
                    valueListenable: selectedMethod,
                    builder: (context, value, child) {
                      return Column(
                        children: [
                          _buildPaymentButton('เงินสด', value),
                          const SizedBox(height: 30),
                          _buildPaymentButton('PromptPay', value),
                          const SizedBox(height: 30),
                          _buildPaymentButton('Wallet', value),
                        ],
                      );
                    },
                  ),

                  const Spacer(),

                  _buildSummaryCard(),

                  const SizedBox(height: 70),

                  ValueListenableBuilder(
                    valueListenable: selectedMethod,
                    builder: (context, value, child) {
                      bool isSelected = value.isNotEmpty;
                      return SizedBox(
                        width: double.infinity,
                        height: 65,
                        child: ElevatedButton(
                          onPressed: isSelected
                              ? () {
                                  print('Confirming with: $value');
                                }
                              : null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isSelected ? const Color(0xFF1A237E) : Colors.grey[300],
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
                          ),
                          child: Text(
                            'Confirm Order',
                            style: GoogleFonts.fredoka(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: isSelected ? Colors.white : Colors.grey[600],
                            ),
                          ),
                        ),
                      );
                    },
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

  Widget _buildPaymentButton(String label, String currentSelected) {
    bool isSelected = currentSelected == label;
    return InkWell(
      onTap: () => selectedMethod.value = label,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: isSelected ? const Color(0xFF1A237E) : Colors.grey.shade300, width: isSelected ? 2.5 : 1),
        ),
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.fredoka(fontSize: 22, fontWeight: FontWeight.bold, color: isSelected ? const Color(0xFF1A237E) : Colors.black87),
          ),
        ),
      ),
    );
  }

  Widget _buildSummaryCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(color: const Color(0xFFE8EAF6), borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          Text(
            ' $waterTemp',
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
    );
  }
}
