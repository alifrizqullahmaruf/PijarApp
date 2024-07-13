import 'package:flutter/material.dart';
import 'package:pijar_app/pages/ticket_selection.dart';
import 'package:pijar_app/widgets/artist_section.dart';
import 'package:pijar_app/widgets/custom_devider.dart';
import 'package:pijar_app/widgets/pictures.dart';
import 'package:pijar_app/widgets/seats.dart';

class DetailConcert extends StatefulWidget {
  const DetailConcert({super.key});

  @override
  State<DetailConcert> createState() => _DetailConcertState();
}

class _DetailConcertState extends State<DetailConcert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text("Detail Concert"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              icon: const Icon(Icons.favorite_border), // love outline
              onPressed: () {
                // Add your onPressed code here!
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // gambar
              SizedBox(
                width: double.infinity,
                child: Image.asset("lib/assets/coldPlay.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              // Keterangan
              const Text("75% of ticket sales used for charity"),
              const SizedBox(
                height: 8,
              ),

              const Text(
                "Coldplay for Charity Concert",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 8,
              ),

              const Row(
                children: [
                  Icon(Icons.map),
                  SizedBox(
                    width: 8,
                  ),
                  Text("Gelora Bung Tomo, Surabaya")
                ],
              ),
              const SizedBox(
                height: 8,
              ),

              const Row(
                children: [
                  Text("8 PM - 11 PM"),
                  Text("  ~  "),
                  Text("Aug 30, 2024")
                ],
              ),

              // Divider
              const CustomDevider(),
              // Choose Your Ticket
              Row(
                children: [
                  const Text(
                    "Choose Your Ticket",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  const Spacer(),
                  Text(
                    "reset",
                    style: TextStyle(color: Colors.blue.shade400, fontSize: 16),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // TicketCard(
                  //   backgroundColor: Colors.white,
                  //   textColor: Colors.black,
                  //   text: "VVIP",
                  //   borderColor: Colors.grey,
                  //   borderWidth: 2.0,
                  // ),
                  // SizedBox(
                  //   width: 8,
                  // ),
                  // TicketCard(
                  //   backgroundColor: Colors.blue,
                  //   textColor: Color.fromARGB(255, 20, 86, 254),
                  //   text: "Premium",
                  //   borderColor: Colors.blue,
                  //   borderWidth: 2.0,
                  // ),
                  // SizedBox(
                  //   width: 8,
                  // ),
                  // TicketCard(
                  //   backgroundColor: Colors.white,
                  //   textColor: Colors.black,
                  //   text: "Reguler",
                  //   borderColor: Colors.grey,
                  //   borderWidth: 2.0,
                  // ),
                  // SizedBox(
                  //   width: 8,
                  // ),
                  // TicketCard(
                  //   backgroundColor: Colors.white,
                  //   textColor: Colors.black,
                  //   text: "Festival",
                  //   borderColor: Colors.grey,
                  //   borderWidth: 2.0,
                  // ),
                  TicketSelectionWidget(),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  const Text(
                    "10 tickets available",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  const Spacer(),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.black)),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "-",
                          style: TextStyle(fontSize: 24),
                        ),
                      )),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "+",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      )),
                ],
              ),

              // Divider
              const CustomDevider(),
              // terget chairity
              const Text(
                "For tornado disaster relief in Texas",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PicturesCard(
                    imagePath: 'lib/assets/imageA.png',
                    height: 75,
                    width: 75,
                    borderRadius: 16,
                  ),
                  PicturesCard(
                    imagePath: 'lib/assets/imageB.png',
                    height: 75,
                    width: 75,
                    borderRadius: 16,
                  ),
                  PicturesCard(
                    imagePath: 'lib/assets/imageC.png',
                    height: 75,
                    width: 75,
                    borderRadius: 16,
                  ),
                  PicturesCard(
                    imagePath: 'lib/assets/imageD.png',
                    height: 75,
                    width: 75,
                    borderRadius: 16,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "7,923 lives lost due to the devastating tornado in Texas. The disaster has left many families without homes, access to basic necessities, and urgent medical care. Our concert aims to raise funds to provide immediate relief and long-term support for the affected communities",
                style: TextStyle(color: Colors.grey),
              ),

              // Divider
              const CustomDevider(),
              // artist
              const Text(
                "Artist",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const ArtistSection(
                imagePath: 'lib/assets/image1.png',
                artistName: 'Cold Play',
                subtitle: 'As a Main Performer',
                songCount: '8 Songs',
              ),
              const ArtistSection(
                imagePath: 'lib/assets/image2.png',
                artistName: 'Another Artist',
                subtitle: 'As a Guest Performer',
                songCount: '5 Songs',
              ),
              const ArtistSection(
                imagePath: 'lib/assets/image3.png',
                artistName: 'Another Artist',
                subtitle: 'As a Guest Performer',
                songCount: '5 Songs',
              ),
              const ArtistSection(
                imagePath: 'lib/assets/image4.png',
                artistName: 'Another Artist',
                subtitle: 'As a Guest Performer',
                songCount: '5 Songs',
              ),
              // Divider
              const CustomDevider(),
              // Seatmap
              const Text(
                "Seat Map",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: Image.asset('lib/assets/stages.png'),
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      // VVIP
                      SeatInfo(
                        seatType: "VVIP",
                        seatCount: "3,252 seat",
                        color: Color.fromARGB(255, 177, 225, 164),
                      ),
                      // Premium
                      SeatInfo(
                        seatType: "Premium",
                        seatCount: "15,231 seat",
                        color: Color.fromARGB(255, 185, 205, 241),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "74,241 Seats /",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "3,214 available",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      // VVIP
                      SeatInfo(
                        seatType: "Reguler",
                        seatCount: "20,123 seat",
                        color: Color.fromARGB(255, 244, 244, 244),
                      ),
                      // Premium
                      SeatInfo(
                        seatType: "Festival",
                        seatCount: "35.231 seat",
                        color: Color.fromARGB(255, 215, 215, 215),
                      ),
                    ],
                  ),
                ],
              ),
              const CustomDevider(),
              const Row(
                children: [
                  Text(
                    "\$420",
                    style: TextStyle(fontSize: 24),
                  ),
                  Spacer(),
                  Text(
                    '2x Tickets Premium',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: const Color.fromARGB(255, 20, 86, 254)),
                  child: const Center(
                    child: Text(
                      'Buy Ticket & Donate',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
