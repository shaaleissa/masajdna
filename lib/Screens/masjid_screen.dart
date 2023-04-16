import 'package:flutter/material.dart';
import 'package:masajdna/constants/colors.dart';
import 'package:masajdna/models/masjid.dart';
import 'package:url_launcher/url_launcher.dart';

class MasjidScreen extends StatefulWidget {
  MasjidScreen({super.key, required this.obj});
  Masjid obj;

  @override
  State<MasjidScreen> createState() => _MasjidScreenState();
}

class _MasjidScreenState extends State<MasjidScreen> {
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
              Text(widget.obj.city,
                style: TextStyle(
                    
                    fontSize: 25,
                    color: MyColors.lightGreen),
              ),
              const SizedBox(height: 20),
              Text(
                ":موعيد صلاة التراويح",
                style: TextStyle(fontSize: 15, color: MyColors.lightGreen),
              ),
                const SizedBox(height: 4),
              Text(widget.obj.trawihTime),
        
              const SizedBox(height: 20),
              Container(
                child: isQiyaam ? const Text('لا يوجد صلاة قيام'): Text(
                  ":موعد صلاة القيام",
                  style: TextStyle(fontSize: 15, color: MyColors.lightGreen),
                ),
              ),
              const SizedBox(height: 4),
        
            ],
            
              
            
          ),
        ),
        

        



        
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final url = Uri.parse('https://goo.gl/maps/q4XyTGTMtTz2d7MM6');
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: const Icon(Icons.add),
        ));
  }
}
