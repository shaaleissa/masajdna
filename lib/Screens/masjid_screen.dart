import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:masajdna/constants/colors.dart';
import 'package:masajdna/model%20views/models_data.dart';
import 'package:masajdna/models/masjid.dart';
import 'package:url_launcher/url_launcher.dart';

class MasjidScreen extends ConsumerStatefulWidget {
  MasjidScreen({super.key, required this.obj, required String fav});
  Masjid obj;
  static String fav='';

  @override
  ConsumerState<MasjidScreen> createState() => _MasjidScreenState();
}

class _MasjidScreenState extends ConsumerState<MasjidScreen> {
  bool isQiyaam = false;
  void qiyaam() {
    setState(() {
      isQiyaam = !isQiyaam;
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Hero(
                  tag: 'masjid',
                  child: Image.asset(widget.obj.imagePath),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                widget.obj.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: MyColors.orange),
              ),
              const SizedBox(height: 9),
              Text(
                widget.obj.city,
                style: TextStyle(fontSize: 25, color: MyColors.lightGreen),
              ),
              const SizedBox(height: 20),
              Text(
                ":موعد صلاة التراويح",
                style: TextStyle(fontSize: 15, color: MyColors.lightGreen),
              ),
              const SizedBox(height: 4),
              Text(widget.obj.trawihTime),
              const SizedBox(height: 20),
              Container(
                child: isQiyaam
                    ? const Text('لا يوجد صلاة قيام')
                    : Text(
                        ":موعد صلاة القيام",
                        style:
                            TextStyle(fontSize: 15, color: MyColors.lightGreen),
                      ),
              ),
              const SizedBox(height: 4),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: MyColors.paige,
          foregroundColor: MyColors.orange,
          onPressed: () {
            Data.cardList[3] =
                Data.cardList[3].copyWith(favorite: widget.obj.name);
            MasjidScreen.fav = Data.cardList[3].favorite;
          },
          child: const Icon(Icons.favorite),
        ));
  }
}
