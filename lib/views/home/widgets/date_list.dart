import 'package:flutter/material.dart';

class DateList extends StatelessWidget {
  DateList({super.key});
  final List<int> dates = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "September 2024",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 22,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.06),
          width: size.width,
          height: 38,
          child: ListView.separated(
              itemCount: dates.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(
                    width: size.width * 0.03,
                  ),
              itemBuilder: (context, index) {
                String currentVal = dates[index].toString().padLeft(2, '0');
                return dateTile(currentVal, currentVal == "03");
              }),
        )
      ],
    );
  }

  //*************************** */
  Widget dateTile(String val, bool isSelected) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue.shade600 : Colors.transparent,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        val,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
