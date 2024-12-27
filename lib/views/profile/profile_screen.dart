import 'package:cabzing/views/profile/widgets/profile_header.dart';
import 'package:cabzing/views/profile/widgets/profile_tile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            const ProfileHeader(),
            const SizedBox(
              height: 16,
            ),
            ProfileTile(
              icon: Icons.help_outline,
              title: "Help",
            ),
            ProfileTile(
              icon: Icons.question_answer,
              title: "FAQ",
            ),
            ProfileTile(icon: Icons.person_add_alt, title: "Invite Friends"),
            ProfileTile(icon: Icons.search_outlined, title: "Terms of Service"),
            ProfileTile(icon: Icons.privacy_tip, title: "Privacy Policy"),
          ],
        ),
      ),
    );
  }
}
