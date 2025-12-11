import 'package:flutter/material.dart';
import 'package:project_luandry/screens/password/reset_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    const Color primaryBlue = Color(0xFF4FC3F7);

    final double loginCardHeight = MediaQuery.of(context).size.height * 0.7;

    return Scaffold(
      backgroundColor: primaryBlue,
      // ใช้ Stack เพื่อวางองค์ประกอบทับซ้อนกัน
      body: Stack(
        children: [
          Positioned(top: 140, right: 30, child: Image.asset('assets/basket.png', width: 120, height: 120)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: loginCardHeight,
              width: double.infinity,

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300, width: 4),

                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                ),
                child: SingleChildScrollView(
                  // SingleChildScrollView เพื่อป้องกัน overflow เมื่อแป้นพิมพ์ขึ้น
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // ทำให้ Column ใช้ความสูงเท่าที่จำเป็น
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Login',
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900, color: Colors.black),
                      ),
                      const SizedBox(height: 40),

                      TextField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: "phone...",
                          labelStyle: TextStyle(color: Color(0xFFBDBDBD), fontSize: 25, fontFamily: 'Fredoka', fontWeight: FontWeight.w500),
                          contentPadding: EdgeInsets.symmetric(vertical: 1, horizontal: 8),

                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFBDBDBD), width: 2)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFBDBDBD), width: 2)),
                        ),
                      ),

                      const SizedBox(height: 60),

                      TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "password...",
                          labelStyle: TextStyle(color: Color(0xFFBDBDBD), fontSize: 25, fontFamily: 'Fredoka', fontWeight: FontWeight.w500),
                          contentPadding: EdgeInsets.symmetric(vertical: 1, horizontal: 8),

                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFBDBDBD), width: 2)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFBDBDBD), width: 2)),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPasswordScreen()));
                          },
                          child: const Text('forgot password?', style: TextStyle(color: Color(0xFFBDBDBD), fontSize: 20)),
                        ),
                      ),

                      const SizedBox(height: 60),

                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {
                              debugPrint('Phone: ${phoneController.text}');
                              debugPrint('Password: ${passwordController.text}');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(200, 70),
                              backgroundColor: primaryBlue,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                              side: BorderSide(color: Colors.blueAccent, width: 2),
                              elevation: 5,
                            ),
                            child: const Text(
                              "login",
                              style: TextStyle(fontSize: 30, fontFamily: 'Fredoka', fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
