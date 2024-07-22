import 'package:flutter/material.dart';
import 'package:pijar_app/widgets/search_bar.dart';

class NotificationScreen extends StatelessWidget {
    static const String routeName = '/notification';

  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SearchBarWidgets(),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Menyelaraskan di tengah sumbu utama
                  crossAxisAlignment: CrossAxisAlignment
                      .center, // Menyelaraskan di tengah sumbu silang
                  children: [
                    Image.asset(
                      "lib/assets/notification.png",
                      height: 150,
                    ),
                    const SizedBox(
                        height: 16), // Menambahkan jarak antara gambar dan teks
                    const Text(
                      "Nothing Here!!!",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
