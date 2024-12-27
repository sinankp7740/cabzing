import 'package:cabzing/views/filters/widgets/customer_dropdown.dart';
import 'package:cabzing/views/filters/widgets/filter_date_selector.dart';
import 'package:cabzing/views/filters/widgets/filter_status_button.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String selectedStatus = "Pending";

  List<String> selectedCustomers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Filters',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Filter',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FilterDateSelector(),

            const SizedBox(height: 5),
            Divider(
              color: Colors.blue.withOpacity(0.5),
              thickness: 0.5,
            ),
            const SizedBox(height: 5),

            FilterStatusButton(),
            const SizedBox(height: 20),

            // Customer Dropdown
            CustomerDropdown(),
            const SizedBox(height: 20),

            const SizedBox(height: 5),
            Divider(
              color: Colors.blue.withOpacity(0.5),
              thickness: 0.5,
            ),
            const SizedBox(height: 5),

            Wrap(
              spacing: 8,
              children: selectedCustomers.map((customer) {
                return Chip(
                  label: Text(
                    customer,
                    style: const TextStyle(color: Colors.white),
                  ),
                  backgroundColor: const Color(0xFF1A1A1A),
                  deleteIcon: const Icon(Icons.close, color: Colors.white),
                  onDeleted: () {
                    // setState(() {
                    //   selectedCustomers.remove(customer);
                    // });
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
