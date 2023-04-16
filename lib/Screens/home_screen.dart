import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:masajdna/constants/colors.dart';
import 'package:masajdna/model%20views/models_data.dart';
import 'package:masajdna/screens/masjid_screen.dart';
import 'package:masajdna/widgets/cards_grid.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
            bottom: ButtonsTabBar(
              tabs: const [
                Tab(
                  icon: Icon(Icons.abc),
                  text: 'الدمام',
                ),
                Tab(
                  icon: Icon(Icons.abc),
                  text: 'الخبر',
                ),
                Tab(
                  icon: Icon(Icons.abc),
                  text: 'الجبيل',
                ),
                Tab(
                  icon: Icon(Icons.abc),
                  text: 'القطيف',
                ),
              ],)
          ),
          body: TabBarView(
            children: [
              MasajidList('الدمام'),
              MasajidList('الخبر'),
              MasajidList('الجبيل'),
              MasajidList('القطيف'),
            ],
          )),
    );
  }


  Widget MasajidList(String city) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Center(
              child: CardsGrid(
                  cols: 2,
                  rows: 2,
                  height: MediaQuery.of(context).size.width / 4,
                  width: MediaQuery.of(context).size.width / 2.5,
                  cards: Data.cardList)),
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
                      itemBuilder: (BuildContext context, i) {
                        if( Data.masjidList[i].city == city) {
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
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return MasjidScreen(
                                      imagePath: Data.masjidList[i].imagePath,
                                    );
                                  }));
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Hero(
                                    tag: Data.masjidList[i].name,
                                    child: Image.asset(
                                        Data.masjidList[i].imagePath,
                                        width: 150,
                                        height: 150,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Column(
                                children: [
                                  Text(
                                    Data.masjidList[i].name,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text(Data.masjidList[i].city,overflow: TextOverflow.ellipsis,),
                                  Text(Data.masjidList[i].trawihTime,overflow: TextOverflow.ellipsis,),
                                ],
                              ),
                            ],
                          ),
                        );
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
