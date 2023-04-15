import 'package:masajdna/models/cards.dart';
import 'package:masajdna/models/masjid.dart';

class Data{
  static final List<Cards> cardList = [
    Cards(
      imagePath: 'assets/1.png',
      name: 'Card 1',
      action: () {},
    ),
    Cards(
      imagePath: 'assets/1.png',
      name: 'Card 2',
      action: () {},
    ),
    Cards(
      imagePath: 'assets/1.png',
      name: 'Card 3',
      action: () {},
    ),
    Cards(
      imagePath: 'assets/1.png',
      name: 'Card 4',
      action: () {},
    ),
  ];
  static const List<Masjid> masjidList = [
    Masjid(name: 'AlAhmad', 
    city: 'Dammam', 
    trawihTime: '8', 
    location: 'googlemaps',
    imagePath: 'assets/1.png'),
    Masjid(name: 'Umran', 
    city: 'Dammam', 
    trawihTime: '8', 
    location: 'googlemaps',
    imagePath: 'assets/1.png'),
    Masjid(name: 'Aldar', 
    city: 'Dammam', 
    trawihTime: '8', 
    location: 'googlemaps',
    imagePath: 'assets/1.png'),
    Masjid(name: 'Albab', 
    city: 'Dammam', 
    trawihTime: '8', 
    location: 'googlemaps',
    imagePath: 'assets/2.png'),
  
  ];
}