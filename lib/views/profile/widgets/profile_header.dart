import 'package:cabzing/views/profile/widgets/profile_header_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Container(
      width: size.width,
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white.withOpacity(0.1)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 80,
                width: 80,
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child: Image.asset('assets/logo/avatar2.png'),
              ),
              const SizedBox(
                width: 12,
              ),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "David Arnold",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    Text(
                      "davidarnold@gmail.com",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ),
              const Icon(
                Icons.edit,
                color: Colors.white,
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ProfileHeaderTile(
                  secondaryIcon: Icons.star,
                  color: Colors.purple.shade200,
                  title: "4.3",
                  subtitle: "rides",
                  count: "2,211",
                  icon: Icons.category,
                ),
              ),
              Expanded(
                child: ProfileHeaderTile(
                  secondaryIcon: Icons.check_circle,
                  color: Colors.green.shade200,
                  title: "KYC",
                  subtitle: "verified",
                  count: "",
                  icon: Icons.category,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(size.width, 50),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.red),
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout),
                  SizedBox(
                    width: 8,
                  ),
                  Text("Log out")
                ],
              ))
        ],
      ),
    );
  }
}
