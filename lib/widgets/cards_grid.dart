import 'package:flutter/material.dart';
import 'package:masajdna/models/cards.dart';

class CardsGrid extends StatelessWidget {
  CardsGrid(
      {super.key, required this.cols, required this.rows, required this.cards,
      required this.width, required this.height});
  int cols, rows;
  List<Cards> cards;
  double width, height;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        for (int index = 0; index < cards.length / cols; index++)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int j = 0; j < cols; j++)
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(cards[index * cols + j].imagePath,
                          width: width, height: height),
                      const SizedBox(height: 10),
                      Text(cards[index * cols + j].name),
                    ],
                  ),
                ),
            ],
          ),
      ],
    );
  }
}
