import 'package:cabzing/themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  final String title;
  final IconData icon;
  ProfileTile({super.key, required this.title, required this.icon});
  final AppColors theme = AppColors();
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: theme.colorBlueWithOpacity,
      ),
      title: Text(
        title,
        style: TextStyle(color: theme.colorWhite, fontSize: 13),
      ),
      trailing: Icon(CupertinoIcons.forward, color: theme.colorWhite),
    );
  }
}
