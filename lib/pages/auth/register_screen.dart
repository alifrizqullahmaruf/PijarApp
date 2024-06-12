import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 249, 249),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              Center(
                child: Image.asset(
                  'lib/assets/smallLogo.png',
                  height: 100, // Anda bisa menyesuaikan ukuran gambar
                ),
              ),
              SizedBox(height: 24),

              // Text label
              Text(
                "Create your account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),

              // Email text field
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                ),
              ),
              SizedBox(height: 16),

              // Password text field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                ),
              ),
              SizedBox(height: 24),
              // Confirm Password text field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                ),
              ),
              SizedBox(height: 24),

              // Sign in button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Action untuk tombol Sign in
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1455FE), // Warna tombol
                    fixedSize: Size(375, 54), // Ukuran tetap tombol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32), // Radius tombol
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  ),
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(height: 24),
              
            ],
          ),
        ),
      ),
    );
  }
}