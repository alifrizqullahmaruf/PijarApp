import 'package:flutter/material.dart';
import 'package:pijar_app/pages/auth/login_screen.dart';

class StartedScreen extends StatefulWidget {
  const StartedScreen({super.key});

  @override
  State<StartedScreen> createState() => _StartedScreenState();
}

class _StartedScreenState extends State<StartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9), // Perbaikan format warna
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: 200,
                child: Column(
                  children: [
                    SizedBox(
                      height: 550,
                      child: Image.asset("lib/assets/logo.png"),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0, // Atur posisi container
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(32), // Radius sudut container
                  child: Container(
                    height: 350,
                    width: MediaQuery.of(context).size.width *
                        1, // Sesuaikan lebar container
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 16.0), // Padding di dalam container
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Harmonize for Humanity, Be a Part of It!",
                            textAlign: TextAlign.center, // Center align text
                            style: TextStyle(
                                fontSize: 44,
                                fontWeight:
                                    FontWeight.w500), // Ukuran teks disesuaikan
                          ),
                          const SizedBox(height: 24),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color(0xFF1455FE), // Warna tombol
                              fixedSize:
                                  const Size(312, 47), // Ukuran tetap tombol
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(32), // Radius tombol
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24,
                                  vertical: 16), // Padding dalam tombol
                            ),
                            child: const Text(
                              "Get started",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          const Row(
                            mainAxisAlignment:
                                MainAxisAlignment.center, // Center align row
                            children: [
                              Text("Already have an account?",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(width: 10),
                              Text(
                                "Login",
                                style: TextStyle(
                                    color: Color(0xFF1455FE),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
