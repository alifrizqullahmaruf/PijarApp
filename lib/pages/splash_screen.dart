import 'package:flutter/material.dart';
import 'package:pijar_app/pages/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9), // Perbaikan format warna
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                child: Column(
                  children: [
                    Image.asset("lib/assets/logo.png"),
                  ],
                ),
              ),
              Positioned(
                bottom: 0, // Atur posisi container
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(32), // Radius sudut container
                  child: Container(
                    height: 312,
                    width: MediaQuery.of(context).size.width *
                        1, // Sesuaikan lebar container
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 16.0), // Padding di dalam container
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Harmonize for Humanity, Be a Part of It!",
                          textAlign: TextAlign.center, // Center align text
                          style: TextStyle(
                              fontSize: 44,
                              fontWeight:
                                  FontWeight.w500), // Ukuran teks disesuaikan
                        ),
                        SizedBox(height: 24),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF1455FE), // Warna tombol
                            fixedSize: Size(312, 47), // Ukuran tetap tombol
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(32), // Radius tombol
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 16), // Padding dalam tombol
                          ),
                          child: Text(
                            "Get started",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(height: 24),
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.center, // Center align row
                          children: [
                            Text("Already have an account?",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400)),
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
            ],
          ),
        ),
      ),
    );
  }
}
