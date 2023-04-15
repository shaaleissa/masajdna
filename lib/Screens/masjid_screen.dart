import 'package:flutter/material.dart';
import 'package:masajdna/model%20views/models_data.dart';

class MasjidScreen extends StatelessWidget {
  MasjidScreen({super.key, required this.imagePath});
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Hero(
          tag: 'masjid',
          child: Image.asset(imagePath),
        ),
      ),
    );
  }
}
