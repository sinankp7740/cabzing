import 'package:cabzing/themes/colors.dart';
import 'package:cabzing/views/invoices/widgets/invoice_list.dart';
import 'package:cabzing/views/invoices/widgets/invoice_search.dart';
import 'package:flutter/material.dart';

class InvoicesScreen extends StatelessWidget {
  final AppColors theme = AppColors();
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
          'Invoices',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              color: theme.colorBlue,
              thickness: 0.5,
            ),
            InvoiceSearch(),
            Divider(
              color: theme.colorBlue,
              thickness: 0.5,
            ),

            const SizedBox(height: 20),

            // Invoice List
            InvoiceList()
          ],
        ),
      ),
    );
  }
}
