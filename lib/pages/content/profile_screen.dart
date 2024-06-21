import 'package:flutter/material.dart';
import 'package:pijar_app/widgets/edit_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"),),
      body: SafeArea(
          child: Column(
        children: [
          Image.asset("lib/assets/profile.png"),
          Text("Name"),
          Text("phone"),
          Text("email"),
          SizedBox(height: 56,),
          EditProfileItem(
          leadingIcon: Icons.lock,
          text: "Privacy Policy",
          trailingIcon: Icons.arrow_back,
        ),
        EditProfileItem(
          leadingIcon: Icons.person,
          text: "Account Settings",
          trailingIcon: Icons.arrow_forward,
        ),
        ],
      )),
    );
  }
}
