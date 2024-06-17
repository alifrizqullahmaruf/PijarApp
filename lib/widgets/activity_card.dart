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
    Key? key,
    required this.logoImagePath,
    required this.activityImagePath,
    required this.timeAgo,
    required this.title,
    required this.location,
    required this.moneySpent,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24),
        Row(
          children: [
            Image.asset(
              logoImagePath,
              width: 60,
            ),
            SizedBox(width: 16),
            Text(timeAgo),
          ],
        ),
        SizedBox(height: 12),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            activityImagePath,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.map),
                      SizedBox(width: 4),
                      Text(location),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 48),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Money Spent",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  moneySpent,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 12),
        Text(description),
      ],
    );
  }
}
