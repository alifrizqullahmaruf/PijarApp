import 'package:flutter/material.dart';
import 'package:pijar_app/widgets/card_tickets.dart';

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
          // icon back
          // text "Detail concert"
          // icon love outline
          ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // gambar
            Container(
              width: double.infinity,
              child: Image.asset("lib/assets/coldPlay.png"),
            ),
            SizedBox(
              height: 16,
            ),
            // Keterangan
            Text("75% of ticket sales used for charity"),
            SizedBox(
              height: 8,
            ),

            Text(
              "Coldplay for Charity Concert",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 8,
            ),

            Row(
              children: [
                Icon(Icons.map),
                SizedBox(
                  width: 8,
                ),
                Text("Gelora Bung Tomo, Surabaya")
              ],
            ),
            SizedBox(
              height: 8,
            ),

            Row(
              children: [
                Text("8 PM - 11 PM"),
                Text("  ~  "),
                Text("Aug 30, 2024")
              ],
            ),

            // Divider
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Divider(
                height: 8,
                color: Color.fromARGB(255, 249, 249, 249),
              ),
            ),
            // Choose Your Ticket
            Row(
              children: [
                Text(
                  "Choose Your Ticket",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Spacer(),
                Text(
                  "reset",
                  style: TextStyle(color: Colors.blue.shade400, fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TicketCard(
                  backgroundColor: Colors.white,
                  textColor: Colors.black,
                  text: "VVIP",
                  borderColor: Colors.blue,
                  borderWidth: 2.0,
                ),
                SizedBox(
                  width: 8,
                ),
                TicketCard(
                  backgroundColor: Colors.blue,
                  textColor: Color.fromARGB(255, 20, 86, 254),
                  text: "Premium",
                  borderColor: Colors.blue,
                  borderWidth: 2.0,
                ),
                SizedBox(
                  width: 8,
                ),
                TicketCard(
                  backgroundColor: Colors.white,
                  textColor: Colors.black,
                  text: "Reguler",
                  borderColor: Colors.blue,
                  borderWidth: 2.0,
                ),
                SizedBox(
                  width: 8,
                ),
                TicketCard(
                  backgroundColor: Colors.white,
                  textColor: Colors.black,
                  text: "Festival",
                  borderColor: Colors.blue,
                  borderWidth: 2.0,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Text(
                  "10 tickets available",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "-",
                        style: TextStyle(fontSize: 24),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.blue.shade400, fontSize: 16),
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "+",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    )),
              ],
            ),

            // Divider

            // terget chairity

            // Divider

            // artist

            // Divider

            // Seatmap

            // divider

            // Button
          ],
        ),
      )),
    );
  }
}
