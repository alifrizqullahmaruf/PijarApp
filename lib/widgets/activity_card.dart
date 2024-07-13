import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final String logoImagePath;
  final String activityImagePath;
  final String timeAgo;
  final String title;
  final String location;
  final String moneySpent;
  final String description;

  const ActivityCard({
    super.key,
    required this.logoImagePath,
    required this.activityImagePath,
    required this.timeAgo,
    required this.title,
    required this.location,
    required this.moneySpent,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Row(
          children: [
            Image.asset(
              logoImagePath,
              width: 60,
            ),
            const SizedBox(width: 16),
            Text(timeAgo),
          ],
        ),
        const SizedBox(height: 12),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            activityImagePath,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.map),
                      const SizedBox(width: 4),
                      Text(location),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 48),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "Money Spent",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  moneySpent,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(description),
      ],
    );
  }
}
