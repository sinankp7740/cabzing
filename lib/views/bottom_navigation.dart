import 'package:cabzing/views/error_screen.dart';
import 'package:cabzing/views/home/home_screen.dart';
import 'package:cabzing/views/invoices/invoices_screen.dart';
import 'package:cabzing/views/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({super.key});
  final List<BottomNavigationBarItem> icons = const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: " "),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.navigation,
        ),
        label: " "),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.notifications,
        ),
        label: " "),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.person,
        ),
        label: " "),
  ];

  ValueNotifier<int> currentIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: ValueListenableBuilder(
          valueListenable: currentIndex,
          builder: (context, val, child) {
            return BottomNavigationBar(
              items: icons,
              backgroundColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              currentIndex: val,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white54,
              onTap: (value) => currentIndex.value = value,
            );
          }),
      body: ValueListenableBuilder(
          valueListenable: currentIndex,
          builder: (context, val, child) {
            if (val == 0) {
              return const HomeScreen();
            } else if (val == 3) {
              return ProfileScreen();
            } else if (val == 2) {
              return InvoicesScreen();
            } else {
              return const ErrorScreen();
            }
          }),
    );
  }
}
