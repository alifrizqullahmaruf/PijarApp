import 'package:flutter/material.dart';
import 'package:pijar_app/pages/detail_concert.dart';
import 'package:pijar_app/widgets/big_card.dart';
import 'package:pijar_app/widgets/search_bar.dart';
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
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SearchBarWidgets(),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Text(
                        "For you",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      const Spacer(),
                      Text(
                        "See all",
                        style: TextStyle(
                            color: Colors.blue.shade400, fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        BigCard(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DetailConcert(),
                                ),
                              );
                            },
                            imagePath: "lib/assets/coldPlay.png",
                            title: "Coldplay for Charity Concert",
                            location: "Yogyakarta",
                            date: "Aug 10"),
                        const SizedBox(
                          width: 16,
                        ),
                        BigCard(
                            onTap: () {},
                            imagePath: "lib/assets/blues.png",
                            title: "Blues for Betterment",
                            location: "Jakarta",
                            date: "June 16")
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    "Find a Concert",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  GridView.count(
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    
                    physics: const NeverScrollableScrollPhysics(),
                    children: List.generate(
                      4,
                      (index) {
                        switch (index) {
                          case 0:
                            return const SmallCard(
                              imagePath: "lib/assets/image1.png",
                              title: "Don’t Drunk Henry",
                              location: "Pekanbaru",
                              date: "Aug 30",
                            );
                          case 1:
                            return const SmallCard(
                              imagePath: "lib/assets/image2.png",
                              title: "Sepatu",
                              location: "Surabaya",
                              date: "March 30",
                            );
                          case 2:
                            return const SmallCard(
                              imagePath: "lib/assets/image3.png",
                              title: "Among us",
                              location: "Yogyakarta",
                              date: "Sep 30",
                            );
                          case 3:
                            return const SmallCard(
                              imagePath: "lib/assets/image4.png",
                              title: "Forgive What I’ve Done",
                              location: "Padang",
                              date: "Dec 30",
                            );
                          default:
                            return Container();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
