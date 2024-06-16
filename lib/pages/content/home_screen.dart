import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pijar_app/widgets/big_card.dart';
import 'package:pijar_app/widgets/small_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {
                            // Implement the functionality for the left icon
                          },
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search by artist, place, or genre...",
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 10),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            // Implement the functionality for the right icon
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Text(
                      "For you",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    Text(
                      "See all",
                      style:
                          TextStyle(color: Colors.blue.shade400, fontSize: 16),
                    )
                  ],
                ),
                SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BigCard(
                          imagePath: "lib/assets/coldPlay.png",
                          title: "Coldplay for Charity Concert",
                          location: "Yogyakarta",
                          date: "Aug 10"),
                      SizedBox(
                        width: 16,
                      ),
                      BigCard(
                          imagePath: "lib/assets/blues.png",
                          title: "Blues for Betterment",
                          location: "Jakarta",
                          date: "June 16")
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Find a Concert",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 24,
                ),
                GridView.count(
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  crossAxisCount: 2, // Menentukan jumlah kolom
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: List.generate(
                    4, // Number of SmallCard widgets
                    (index) => SmallCard(
                      imagePath: "lib/assets/blues.png",
                      title: "Don’t Drunk Henry",
                      location: "Pekanbaru",
                      date: "Aug 30",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
