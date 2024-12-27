import 'package:cabzing/views/home/widgets/date_list.dart';
import 'package:cabzing/views/home/widgets/line_chart.dart';
import 'package:cabzing/views/home/widgets/notifications_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Image.asset(
          'assets/logo/logo3.png',
          width: size.width * 0.3,
          // height: 120,
        ),
        actions: [
          Image.asset(
            'assets/logo/avatar2.png',
            // width: size.width * 0.3,
            // height: 120,
          ),
          SizedBox(
            width: size.width * 0.02,
          )
        ],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(size.width * 0.04),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white10.withOpacity(0.07)),
              child: Column(
                children: [
                  const LineChartSample2(),
                  const SizedBox(
                    height: 18,
                  ),
                  DateList(),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const NotificationTile(
                color: Colors.white,
                subtitle: "Reserved",
                title: "Bookings",
                count: "123",
                icon: Icons.compass_calibration_outlined),
            const SizedBox(
              height: 8,
            ),
            const NotificationTile(
              color: Color(0xFFFFFDD0),
              subtitle: "Rupees",
              title: "Invoices",
              count: "10,232.00",
              icon: Icons.adjust_rounded,
            )
          ],
        ),
      ),
    );
  }
}
