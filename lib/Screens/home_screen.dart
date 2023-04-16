import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masajdna/constants/colors.dart';
import 'package:masajdna/model%20views/models_data.dart';
import 'package:masajdna/providers/auth_provider.dart';
import 'package:masajdna/screens/masjid_screen.dart';
import 'package:masajdna/widgets/cards_grid.dart';

class HomeScreen extends ConsumerWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final _auth = ref.watch(authenticationProvider);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 235, 206),
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color:  Color.fromARGB(255, 31, 74, 33),
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
                onTap: () {
                },
              ),
              ListTile(
                leading: Icon(Icons.heart_broken),
                title: Text('Favorites'),
              ),
            ],
          ),
        ),
          appBar: AppBar(
              backgroundColor: MyColors.white,
              foregroundColor: MyColors.orange,
              elevation: 0,
              bottom: TabBar(
                indicatorColor: const Color.fromARGB(255, 31, 74, 33),
                tabs: [
                  Text(
                    'الدمام',
                    style: GoogleFonts.tajawal(
                      fontSize: 15,
                      color: Colors.black,fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    'الخبر',
                    style: GoogleFonts.tajawal(
                      fontSize: 15,
                      color: Colors.black,fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    'الظهران',
                    style: GoogleFonts.tajawal(
                      fontSize: 15,
                      color: Colors.black,fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    'الجبيل',
                    style: GoogleFonts.tajawal(
                      fontSize: 15,
                      color: Colors.black,fontWeight: FontWeight.w700
                    ),
                  ),
                ],
              )),
          body: TabBarView(
            children: [
              MasajidList('الدمام', context),
              MasajidList('الخبر', context),
              MasajidList('الظهران', context),
              MasajidList('الجبيل', context),
            ],
          )),
    );
  }

  Widget MasajidList(String city, BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          CardsGrid(
              cols: 2,
              rows: 2,
              height: MediaQuery.of(context).size.width / 4,
              width: MediaQuery.of(context).size.width / 2.5,
              cards: Data.cardList),
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
                        if (Data.masjidList[i].city == city) {
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
                                        obj: Data.masjidList[i],
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
                                const SizedBox(width: 40),
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
                                    Text(
                                      Data.masjidList[i].city,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      Data.masjidList[i].trawihTime,
                                      overflow: TextOverflow.ellipsis,
                                    ),
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
