import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:masajdna/model%20views/models_data.dart';
import 'package:masajdna/models/cards.dart';
import 'package:masajdna/providers/auth_provider.dart';

class CardsGrid extends ConsumerStatefulWidget {
  CardsGrid(
      {super.key,
      required this.cols,
      required this.rows,
      required this.cards,
      required this.width,
      required this.height});
  int cols, rows;
  List<Cards> cards;
  double width, height;

  @override
  ConsumerState<CardsGrid> createState() => _CardsGridState();
}

class _CardsGridState extends ConsumerState<CardsGrid> {
  @override
  void setState(VoidCallback fn) {
    Data.cardList[3] = Data.cardList[3];
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    String date = "${today.day}-${today.month}-${today.year}";

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        for (int index = 0; index < widget.cards.length / widget.cols; index++)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int j = 0; j < widget.cols; j++)
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.cards[index * widget.cols + j].name,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      if (widget.cards[index * widget.cols + j].name == 'اليوم')
                        Text(date),
                      if (widget.cards[index * widget.cols + j].name ==
                          'الوقت حتى الإفطار')
                        const Text('المتبقي 2 ساعة و 30 دقيقة'),
                      if (widget.cards[index * widget.cols + j].name ==
                          'حالة الطقس')
                        const Text('مشمس'),
                      if (widget.cards[index * widget.cols + j].name ==
                          'المفضلة')
                        Text(Data.cardList[index * widget.cols + j].favorite),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Lottie.network(
                            widget.cards[index * widget.cols + j].imagePath,
                            width: widget.width,
                            height: widget.height),
                      ),
                    ],
                  ),
                ),
            ],
          ),
      ],
    );
  }
}
