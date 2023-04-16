import 'package:flutter/material.dart';
import 'package:masajdna/constants/colors.dart';
import 'package:masajdna/model%20views/models_data.dart';
import 'package:masajdna/models/masjid.dart';
import 'package:url_launcher/url_launcher.dart';

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
            const SizedBox(height: 15),
            Text(
              obj.name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: MyColors.orange),
            ),
            const SizedBox(height: 9),
            Text(obj.city,
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
            Text(obj.trawihTime),

            const SizedBox(height: 20),
            Text(
              ":موعد صلاة القيام",
              style: TextStyle(fontSize: 15, color: MyColors.lightGreen),
            ),
            const SizedBox(height: 4),

            GestureDetector(
              
            ),
           
          ],
          
            
          
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
