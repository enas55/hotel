import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key, required this.checkBoxName});
  final Text checkBoxName;

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool selectedCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Checkbox(
              activeColor: Colors.blueAccent,
              value: selectedCheckBox,
              onChanged: (value) {
                selectedCheckBox = !selectedCheckBox;
                setState(() {});
              }),
          const SizedBox(width: 10),
          widget.checkBoxName
        ],
      ),
    );
  }
}
