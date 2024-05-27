import 'package:flutter/material.dart';
import 'package:hotel/pages/rooms.dart';
import 'package:hotel/widgets/check_box.dart';
import 'package:hotel/widgets/date_picker.dart';
import 'package:hotel/widgets/sliders.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool selectedRadioBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Android ATC Hotel',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.orangeAccent),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset('images/Bellagio-Hotel-Casino-Las-Vegas.webp',
                  width: double.infinity, height: 120, fit: BoxFit.fill),
            ),
            const DatePicker(
              title: Text(
                'Check-in Date :',
                style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const DatePicker(
              title: Text(
                'Check-out Date :',
                style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const Slide(
              name: Text(
                'Adults : ',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const Slide(
              name: Text(
                'Children : ',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Extras : ',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const CheckBoxWidget(
              checkBoxName: Text(
                'Breakfast (10 USD/Day)',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const CheckBoxWidget(
              checkBoxName: Text(
                'Internet WiFi (5 USD/Day)',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const CheckBoxWidget(
              checkBoxName: Text(
                'Parking (5 USD/Day)',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const CheckBoxWidget(
              checkBoxName: Text(
                'Swimming Pool (10 USD/Day)',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'View : ',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Checkbox(
                      activeColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      value: selectedRadioBox ? true : false,
                      onChanged: (value) {
                        selectedRadioBox = value!;
                        setState(() {});
                      }),
                  const Text(
                    'City View',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => const Rooms(),
                      ),
                    );
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(color: Colors.orange, fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
