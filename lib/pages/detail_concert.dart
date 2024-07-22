import 'package:flutter/material.dart';
import 'package:pijar_app/pages/content/home_screen.dart';
import 'package:pijar_app/widgets/artist_section.dart';
import 'package:pijar_app/widgets/custom_devider.dart';
import 'package:pijar_app/widgets/pictures.dart';
import 'package:pijar_app/widgets/seats.dart';
import 'package:quickalert/quickalert.dart';

class DetailConcert extends StatefulWidget {
  static const String routeName = '/detail_concert';

  const DetailConcert({Key? key}) : super(key: key);

  @override
  State<DetailConcert> createState() => _DetailConcertState();
}

class _DetailConcertState extends State<DetailConcert> {
  int ticketCount = 2; // Menambahkan variabel untuk menghitung tiket
  String _selectedTicket = "VVIP";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Detail Concert"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {
                // TODO: Implementasi fitur favorit
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "lib/assets/coldPlay.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 16),
                _buildConcertInfo(),
                const CustomDevider(),
                _buildTicketSelection(),
                const CustomDevider(),
                _buildCharityInfo(),
                const CustomDevider(),
                _buildArtistSection(),
                const CustomDevider(),
                _buildSeatMap(),
                const CustomDevider(),
                _buildBottomSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildConcertInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("75% of ticket sales used for charity"),
        const SizedBox(height: 8),
        const Text(
          "Coldplay for Charity Concert",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 8),
        const Row(
          children: [
            Icon(Icons.map),
            SizedBox(width: 8),
            Text("Gelora Bung Tomo, Surabaya")
          ],
        ),
        const SizedBox(height: 8),
        const Row(
          children: [Text("8 PM - 11 PM"), Text("  ~  "), Text("Aug 30, 2024")],
        ),
      ],
    );
  }

  Widget _buildTicketSelection() {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              "Choose Your Ticket",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                // TODO: Implementasi reset
              },
              child: Text(
                "reset",
                style: TextStyle(color: Colors.blue.shade400, fontSize: 16),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ChoiceChip(
              label: Text("VVIP"),
              selected: _selectedTicket == "VVIP",
              backgroundColor: _selectedTicket == "VVIP"
                  ? Color.fromARGB(255, 20, 86, 254)
                  : Colors.white,
              selectedColor: Color.fromARGB(255, 20, 86, 254),
              onSelected: (selected) {
                setState(() {
                  _selectedTicket = "VVIP";
                });
              },
              labelStyle: TextStyle(
                color: _selectedTicket == "VVIP" ? Colors.white : Colors.black,
              ),
              side: BorderSide(color: Colors.grey, width: 2.0),
            ),
            ChoiceChip(
              label: Text("Premium"),
              selected: _selectedTicket == "Premium",
              backgroundColor: _selectedTicket == "Premium"
                  ? Color.fromARGB(255, 20, 86, 254)
                  : Colors.white,
              selectedColor: Color.fromARGB(255, 20, 86, 254),
              onSelected: (selected) {
                setState(() {
                  _selectedTicket = "Premium";
                });
              },
              labelStyle: TextStyle(
                color:
                    _selectedTicket == "Premium" ? Colors.white : Colors.black,
              ),
              side: BorderSide(color: Colors.grey, width: 2.0),
            ),
            ChoiceChip(
              label: Text("Regular"),
              selected: _selectedTicket == "Regular",
              backgroundColor: _selectedTicket == "Regular"
                  ? Color.fromARGB(255, 20, 86, 254)
                  : Colors.white,
              selectedColor: Color.fromARGB(255, 20, 86, 254),
              onSelected: (selected) {
                setState(() {
                  _selectedTicket = "Regular";
                });
              },
              labelStyle: TextStyle(
                color:
                    _selectedTicket == "Regular" ? Colors.white : Colors.black,
              ),
              side: BorderSide(color: Colors.grey, width: 2.0),
            ),
            ChoiceChip(
              label: Text("Festival"),
              selected: _selectedTicket == "Festival",
              backgroundColor: _selectedTicket == "Festival"
                  ? Color.fromARGB(255, 20, 86, 254)
                  : Colors.white,
              selectedColor: Color.fromARGB(255, 20, 86, 254),
              onSelected: (selected) {
                setState(() {
                  _selectedTicket = "Festival";
                });
              },
              labelStyle: TextStyle(
                color:
                    _selectedTicket == "Festival" ? Colors.white : Colors.black,
              ),
              side: BorderSide(color: Colors.grey, width: 2.0),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            const Text(
              "10 tickets available",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            _buildTicketCounter(),
          ],
        ),
      ],
    );
  }

  Widget _buildTicketCounter() {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: () {
            setState(() {
              if (ticketCount > 0) ticketCount--;
            });
          },
        ),
        Text(
          "$ticketCount",
          style: const TextStyle(fontSize: 18),
        ),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              if (ticketCount < 10) ticketCount++;
            });
          },
        ),
      ],
    );
  }

  Widget _buildCharityInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "For tornado disaster relief in Texas",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 16),
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
        const SizedBox(height: 8),
        const Text(
          "7,923 lives lost due to the devastating tornado in Texas. The disaster has left many families without homes, access to basic necessities, and urgent medical care. Our concert aims to raise funds to provide immediate relief and long-term support for the affected communities",
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildArtistSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Artist",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        ArtistSection(
          imagePath: 'lib/assets/image1.png',
          artistName: 'Cold Play',
          subtitle: 'As a Main Performer',
          songCount: '8 Songs',
        ),
        ArtistSection(
          imagePath: 'lib/assets/image2.png',
          artistName: 'Another Artist',
          subtitle: 'As a Guest Performer',
          songCount: '5 Songs',
        ),
        ArtistSection(
          imagePath: 'lib/assets/image3.png',
          artistName: 'Another Artist',
          subtitle: 'As a Guest Performer',
          songCount: '5 Songs',
        ),
        ArtistSection(
          imagePath: 'lib/assets/image4.png',
          artistName: 'Another Artist',
          subtitle: 'As a Guest Performer',
          songCount: '5 Songs',
        ),
      ],
    );
  }

  Widget _buildSeatMap() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Seat Map",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        Image.asset('lib/assets/stages.png', width: double.infinity),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                SeatInfo(
                  seatType: "VVIP",
                  seatCount: "3,252 seat",
                  color: Color.fromARGB(255, 177, 225, 164),
                ),
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
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                Text(
                  "3,214 available",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            Column(
              children: [
                SeatInfo(
                  seatType: "Regular",
                  seatCount: "20,123 seat",
                  color: Color.fromARGB(255, 244, 244, 244),
                ),
                SeatInfo(
                  seatType: "Festival",
                  seatCount: "35,231 seat",
                  color: Color.fromARGB(255, 215, 215, 215),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBottomSection() {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              "\$420",
              style: TextStyle(fontSize: 24),
            ),
            const Spacer(),
            Text(
              '${ticketCount}x Tickets Premium',
              style: const TextStyle(fontSize: 14),
            )
          ],
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            QuickAlert.show(
              context: context,
              type: QuickAlertType.confirm,
              title: 'Are you sure?',
              text: 'Do you want to buy the ticket and donate?',
              confirmBtnText: 'Yes',
              cancelBtnText: 'No',
              onConfirmBtnTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              onCancelBtnTap: () {
                // Implement the ticket purchase functionality here
                Navigator.of(context).pop(); // Dismiss the alert
              },
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 20, 86, 254),
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          child: const Text(
            'Buy Ticket & Donate',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
