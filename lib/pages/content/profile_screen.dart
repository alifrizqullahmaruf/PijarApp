import 'package:flutter/material.dart';
import 'package:pijar_app/widgets/edit_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(child: Text("Profile")),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            SizedBox(
                height: 150, child: Image.asset("lib/assets/profile.png")),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Alif Rizqullah Maruf",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            const Text(
              "082111492113",
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              "alifrizz@mail.ugm.ac.id",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 56,
            ),
            const EditProfileItem(
              leadingIcon: Icons.lock,
              text: "Privacy Policy",
              trailingIcon: Icons.arrow_right,
            ),
            const SizedBox(
              height: 16,
            ),
            const EditProfileItem(
              leadingIcon: Icons.person,
              text: "Account Settings",
              trailingIcon: Icons.arrow_right,
            ),
            const SizedBox(
              height: 16,
            ),
            const EditProfileItem(
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
