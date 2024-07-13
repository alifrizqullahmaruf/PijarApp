import 'package:flutter/material.dart';

class EditProfileItem extends StatelessWidget {
  final IconData leadingIcon;
  final String text;
  final IconData trailingIcon;

  const EditProfileItem({
    super.key,
    required this.leadingIcon,
    required this.text,
    required this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(85, 20, 85, 254),
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(leadingIcon, color: const Color.fromARGB(255, 20, 86, 254)),
          ),
        ),
        const SizedBox(
          width: 24,
        ),
        Text(text),
        const Spacer(),
        SizedBox(
          width: 24,
          child: Image.asset('lib/assets/iconBack.png'),
        )
      ],
    );
  }
}
