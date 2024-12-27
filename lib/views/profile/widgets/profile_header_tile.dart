import 'package:flutter/material.dart';

class ProfileHeaderTile extends StatelessWidget {
  final String title;
  final String count;
  final String subtitle;
  final IconData icon;
  final IconData secondaryIcon;

  final Color color;
  const ProfileHeaderTile(
      {super.key,
      required this.title,
      required this.count,
      required this.subtitle,
      required this.icon,
      required this.color,
      required this.secondaryIcon});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Container(
      height: 110,
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.03),
      padding:
          EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.black.withOpacity(0.08),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 40,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(90)),
            child: Icon(
              icon,
              size: 20,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  Icon(
                    secondaryIcon,
                    size: 13,
                    color: Colors.white,
                  )
                ],
              ),
              count.isEmpty
                  ? const SizedBox.shrink()
                  : Text(
                      count,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
              Text(
                subtitle,
                style: TextStyle(color: Colors.white54, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
