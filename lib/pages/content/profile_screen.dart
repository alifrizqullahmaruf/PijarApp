import 'package:flutter/material.dart';
import 'package:pijar_app/widgets/edit_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text("Profile")),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Container(
                height: 150, child: Image.asset("lib/assets/profile.png")),
            SizedBox(
              height: 16,
            ),
            Text(
              "Alif Rizqullah Maruf",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            Text(
              "082111492113",
              style: TextStyle(fontSize: 16),
            ),
            Text(
              "alifrizz@mail.ugm.ac.id",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 56,
            ),
            EditProfileItem(
              leadingIcon: Icons.lock,
              text: "Privacy Policy",
              trailingIcon: Icons.arrow_right,
            ),
            SizedBox(
              height: 16,
            ),
            EditProfileItem(
              leadingIcon: Icons.person,
              text: "Account Settings",
              trailingIcon: Icons.arrow_right,
            ),
            SizedBox(
              height: 16,
            ),
            EditProfileItem(
              leadingIcon: Icons.logout,
              text: "Log out",
              trailingIcon: Icons.arrow_right,
            ),
          ],
        ),
      )),
    );
  }
}
