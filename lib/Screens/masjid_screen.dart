import 'package:flutter/material.dart';
import 'package:masajdna/model%20views/models_data.dart';
import 'package:masajdna/models/masjid.dart';

class MasjidScreen extends StatelessWidget {
  MasjidScreen({super.key, required this.obj});
  Masjid obj;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Hero(
                tag: 'masjid',
                child: Image.asset(obj.imagePath),
              ),
            ),
            const SizedBox(height: 30),
            const Text("Data")
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ));
  }
}
