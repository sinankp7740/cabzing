import 'package:flutter/material.dart';

class CustomerDropdown extends StatelessWidget {
  CustomerDropdown({super.key});
  String selectedCustomer = "Customer";
  List<String> customers = ["Savad Farooque"];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.2),
        border: Border.all(color: Colors.blue, width: 0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton<String>(
        value: selectedCustomer,
        dropdownColor: Colors.black,
        icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
        underline: Container(),
        items: ["Customer", "Savad Farooque", "John Doe"].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: const TextStyle(color: Colors.white),
            ),
          );
        }).toList(),
        onChanged: (newValue) {
          // if (newValue != null &&
          //     !selectedCustomers.contains(newValue)) {
          //   setState(() {
          //     selectedCustomers.add(newValue);
          //   });
          // }
        },
      ),
    );
  }
}
