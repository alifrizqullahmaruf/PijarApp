import 'package:flutter/material.dart';

class EditProfileItem extends StatelessWidget {
  final IconData leadingIcon;
  final String text;
  final IconData trailingIcon;

  const EditProfileItem({
    Key? key,
    required this.leadingIcon,
    required this.text,
    required this.trailingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(85, 20, 85, 254),
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(leadingIcon, color: Color.fromARGB(255, 20, 86, 254)),
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Text(text),
        Spacer(),
        Container(
          width: 24,
          child: Image.asset('lib/assets/iconBack.png'),
        )
      ],
    );
  }
}
