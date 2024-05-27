import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({super.key, required this.name});
  final Text name;

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  double selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          widget.name,
          Text(
            selectedValue.round().toString(),
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 20,
            ),
          ),
          Expanded(
            child: Slider(
                inactiveColor: const Color.fromARGB(255, 162, 188, 233),
                activeColor: Colors.blue,
                label: selectedValue.round().toString(),
                max: 100,
                divisions: 100,
                value: selectedValue,
                onChanged: (value) {
                  selectedValue = value;
                  setState(() {});
                }),
          )
        ],
      ),
    );
  }
}
