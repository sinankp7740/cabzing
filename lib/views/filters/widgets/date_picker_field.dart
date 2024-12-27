import 'package:flutter/material.dart';

class DatePickerField extends StatelessWidget {
  final String label;
  final DateTime? date;
  final ValueChanged<DateTime> onSelectDate;

  const DatePickerField({
    Key? key,
    required this.label,
    this.date,
    required this.onSelectDate,
  }) : super(key: key);

  Future<void> _pickDate(BuildContext context) async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: date ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: ThemeData.dark(),
          child: child!,
        );
      },
    );
    if (selectedDate != null) {
      onSelectDate(selectedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => _pickDate(context),
      child: Container(
        height: 45,
        width: size.width * 0.3,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.calendar_today,
              color: Colors.white,
              size: 15,
            ),
            const SizedBox(width: 8),
            Text(
              date != null
                  ? "${date!.day}/${date!.month}/${date!.year}"
                  : label,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
