import 'package:flutter/material.dart';
import 'package:masajdna/constants/colors.dart';
import 'package:masajdna/model%20views/models_data.dart';
import 'package:masajdna/screens/masjid_screen.dart';
import 'package:masajdna/widgets/cards_grid.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.person,
            size: 40,
          ),
          onPressed: () {},
        ),
        backgroundColor: MyColors.white,
        foregroundColor: MyColors.orange,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Center(
                child: CardsGrid(
                    cols: 2,
                    rows: 2,
                    width: 150,
                    height: 150,
                    cards: Data.cardList)),
            const SizedBox(height: 30),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: Data.masjidList.length,
                        itemBuilder: (BuildContext context,i){
                          return Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: MyColors.white,
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
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    return MasjidScreen(imagePath: Data.masjidList[i].imagePath,);  }));
                                  },
                                  child:
                                Hero(tag: Data.masjidList[i].name, 
                                child: Image.asset(Data.masjidList[i].imagePath, width: 150, height: 150),),),
                                const SizedBox(width: 50),
                                Column(
                                  children: [
                                    Text(Data.masjidList[i].name, 
                                    style: 
                                    const TextStyle(fontSize: 20, 
                                    fontWeight: FontWeight.bold ),),
                                    Text(Data.masjidList[i].city),
                                    Text(Data.masjidList[i].trawihTime),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
