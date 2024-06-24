import 'package:flutter/material.dart';

class ArtistSection extends StatelessWidget {
  final String imagePath;
  final String artistName;
  final String subtitle;
  final String songCount;

  const ArtistSection({
    super.key,
    required this.imagePath,
    required this.artistName,
    required this.subtitle,
    required this.songCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imagePath),
            radius: 30,
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                artistName,
                style: TextStyle(fontSize: 18),
              ),
              Text(
                subtitle,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Spacer(),
          Text(
            songCount,
            style: TextStyle(color: Color.fromARGB(255, 20, 86, 254)),
          )
        ],
      ),
    );
  }
}
