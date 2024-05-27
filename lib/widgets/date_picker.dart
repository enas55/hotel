import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key, required this.title});
  final Text title;

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime selectedDate = DateTime.now();

  Future<void> datePicker() async {
    var result = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2024),
      lastDate: DateTime(2025),
    );
    if (result != null) {
      result = selectedDate;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          widget.title,
          const SizedBox(width: 10),
          Text(
            '${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}',
            style: const TextStyle(
              color: Colors.blueAccent,
              fontSize: 20,
            ),
          ),
          IconButton(
            onPressed: datePicker,
            icon: const Icon(
              Icons.calendar_month_outlined,
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
