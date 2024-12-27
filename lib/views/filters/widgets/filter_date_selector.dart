import 'package:cabzing/views/filters/widgets/date_picker_field.dart';
import 'package:flutter/material.dart';

class FilterDateSelector extends StatelessWidget {
  FilterDateSelector({super.key});
  DateTime? startDate;
  DateTime? endDate;
  String selectedTimeRange = "This Month";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue.withOpacity(0.2)),
            child: DropdownButton<String>(
              value: selectedTimeRange,
              dropdownColor: Colors.black,
              icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
              underline: Container(),
              items: ["This Month", "Last Month", "Custom"].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                );
              }).toList(),
              onChanged: (newValue) {
                // setState(() {
                //   selectedTimeRange = newValue!;
                // });
              },
            ),
          ),
          const SizedBox(height: 20),

          // Date Pickers
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DatePickerField(
                label: "Start Date",
                date: startDate,
                onSelectDate: (selectedDate) {
                  // setState(() {
                  //   startDate = selectedDate;
                  // });
                },
              ),
              DatePickerField(
                label: "End Date",
                date: endDate,
                onSelectDate: (selectedDate) {
                  // setState(() {
                  //   endDate = selectedDate;
                  // });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
