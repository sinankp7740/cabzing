import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  final String title;
  final String count;
  final String subtitle;
  final IconData icon;
  final Color color;
  const NotificationTile(
      {super.key,
      required this.title,
      required this.count,
      required this.subtitle,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Container(
      height: 110,
      width: size.width,
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.03),
      padding:
          EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white10.withOpacity(0.08),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 40,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(70)),
            child: Icon(
              icon,
              size: 20,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                ),
                Text(
                  count,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.white54, fontSize: 12),
                ),
              ],
            ),
          ),
          const Center(
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
