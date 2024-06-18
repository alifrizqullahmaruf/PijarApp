import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String location;
  final String date;

  const SmallCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.location,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Warna bayangan
            spreadRadius: 2, // Menyebar radius
            blurRadius: 4, // Blur radius
            offset: Offset(0, 2), // Offset dari bayangan (x, y)
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8), // Mengurangi padding vertikal
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(
                        Icons.map,
                        color: Colors.grey,
                        size: 16,
                      ),
                      SizedBox(width: 4),
                      Expanded( // Menambahkan Expanded untuk teks lokasi
                        child: Text(
                          location,
                          style: TextStyle(color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Spacer(),
                      Text(
                        date,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
