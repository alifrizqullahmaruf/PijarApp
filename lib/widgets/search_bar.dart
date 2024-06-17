import 'package:flutter/material.dart';

class SearchBarWidgets extends StatelessWidget {
  const SearchBarWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
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
    );
  }
}
