import 'package:flutter/material.dart';

class SeatInfo extends StatelessWidget {
  final String seatType;
  final String seatCount;
  final Color color;

  const SeatInfo({
    super.key,
    required this.seatType,
    required this.seatCount,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: SizedBox(
              height: 20,
              child: CircleAvatar(
                backgroundColor: color,
              ),
            ),
          ),
          Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the start
            children: [
              Text(
                seatType,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(seatCount)
            ],
          ),
          
        ],
      ),
    );
  }
}
