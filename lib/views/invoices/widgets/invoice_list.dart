import 'package:cabzing/themes/colors.dart';
import 'package:flutter/material.dart';

// enum Status {
//   Pending,
//   Invoiced,
//   Cancelled,
// }

class InvoiceList extends StatelessWidget {
  InvoiceList({super.key});
  final statuses = ['Pending', 'Invoiced', 'Cancelled', 'Pending'];
  final AppColors theme = AppColors();
  final colors = [
    Colors.red,
    Colors.blue,
    Colors.grey,
    Colors.red,
  ];
  // String filterStatus(Status val) {
  //   return switch (val) {
  //     Status.Pending => 'Pending',
  //     Status.Invoiced => 'Invoiced',
  //     Status.Cancelled => 'Cancelled',
  //     _ => "Pending",
  //   };
  // }
  //  Color filterColors(Status val) {
  //   return switch (val) {
  //     Status.Pending =>  Colors.blue,
  //     Status.Invoiced =>  Colors.green,
  //     Status.Cancelled =>  Colors.red,
  //     _ =>  Colors.blue,
  //   };
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Expanded(
      child: ListView.separated(
        itemCount: 4,
        separatorBuilder: (context, index) => Divider(
          color: theme.colorBlue,
          thickness: 0.1,
          indent: size.width * 0.07,
          endIndent: size.width * 0.07,
        ),
        itemBuilder: (context, index) {
          return tile(statuses[index], colors[index]);
        },
      ),
    );
  }

  Widget tile(String status, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.black,
      // decoration: BoxDecoration(
      //   color: const Color(0xFF1A1A1A),
      //   borderRadius: BorderRadius.circular(10),
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '#Invoice No',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Customer Name',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                status,
                style: TextStyle(
                  color: color,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'SAR 10,000.00',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
