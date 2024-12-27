import 'package:flutter/material.dart';

class FilterStatusButton extends StatelessWidget {
  FilterStatusButton({super.key});
  String selectedStatus = "Pending";
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: ["Pending", "Invoiced", "Cancelled"].map((status) {
        return ElevatedButton(
          onPressed: () {
            // setState(() {
            //   selectedStatus = status;
            // });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: selectedStatus == status
                ? Colors.blue
                : const Color(0xFF1A1A1A),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: Text(
            status,
            style: const TextStyle(color: Colors.white),
          ),
        );
      }).toList(),
    );
  }
}
