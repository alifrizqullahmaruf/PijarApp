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
        Container(child: Icon(leadingIcon),),
        SizedBox(width: 24,),
        Text(text),
        Spacer(),
        Icon(trailingIcon),
      ],
    );
  }
}