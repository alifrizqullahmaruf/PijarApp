import 'package:flutter/material.dart';

class DetailConcert extends StatefulWidget {
  const DetailConcert({super.key});

  @override
  State<DetailConcert> createState() => _DetailConcertState();
}

class _DetailConcertState extends State<DetailConcert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      // icon back
      // text "Detail concert"
      // icon love outline
    ),
    body: SafeArea(child: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(children: [
        // gambar
      
        // Keterangan
      
        // Divider
      
        // Choose Your Ticket
      
        // Divider
      
        // terget chairity
      
        // Divider
        
        // artist
      
        // Divider
      
        // Seatmap
      
        // divider
      
        // Button
      ],),
    )),
    );
  }
}