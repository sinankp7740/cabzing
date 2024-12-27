import 'package:cabzing/main.dart';
import 'package:cabzing/themes/colors.dart';
import 'package:cabzing/views/filters/filter_screen.dart';
import 'package:flutter/material.dart';

class InvoiceSearch extends StatelessWidget {
  InvoiceSearch({super.key});
  final AppColors theme = AppColors();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xFF1A1A1A),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              style: TextStyle(color: theme.colorWhite),
              decoration: InputDecoration(
                fillColor: theme.colorBlackWithOpacity,
                filled: true,
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                hintText: 'Search',
                hintStyle: const TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 0.5, color: theme.colorBlue)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 0.5, color: theme.colorBlue)),
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        ElevatedButton.icon(
          onPressed: () => navigatorKey.currentState
              ?.push(MaterialPageRoute(builder: (_) => FilterScreen())),
          icon: Icon(Icons.filter_alt, color: theme.colorBlue),
          label: Text('Add Filters', style: TextStyle(color: theme.colorBlue)),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white10,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
