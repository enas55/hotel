import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  const Rooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text(
          'Rooms List',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            rooms(
                title: 'King Room',
                img: Image.asset(
                  'images/super-king-size-bed.jpg',
                  width: 100,
                ),
                details: 'A room with a king-sized bed'),
            rooms(
                title: 'Double Room',
                img: Image.asset(
                  'images/istockphoto.jpg',
                  width: 100,
                ),
                details: 'A room assigned to two people'),
            rooms(
                title: 'Family Room',
                img: Image.asset(
                  'images/room_fourth_images_01.jpg',
                  width: 100,
                ),
                details: 'A room assigned to three or four people'),
          ],
        ),
      ),
    );
  }
}

Widget rooms({
  required Image img,
  required String title,
  required String details,
}) {
  return Card(
    surfaceTintColor: Colors.white,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              img,
              Text(
                title,
                style: const TextStyle(color: Colors.orange),
              ),
              const Icon(Icons.arrow_drop_up_sharp),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Text(
          details,
          style: const TextStyle(color: Colors.black, fontSize: 20),
        )
      ],
    ),
  );
}
