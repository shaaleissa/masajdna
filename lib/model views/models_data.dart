import 'package:masajdna/models/cards.dart';
import 'package:masajdna/models/masjid.dart';

class Data {
  static final List<Cards> cardList = [
    Cards(
      imagePath: 'https://assets6.lottiefiles.com/packages/lf20_zjvd0nnf.json',
      name: 'اليوم',
      action: () {},
    ),
    Cards(
      imagePath: 'https://assets5.lottiefiles.com/private_files/lf30_7mp95dwr.json',
      name: 'الوقت حتى الإفطار',
      action: () {},
    ),
    Cards(
      imagePath: 'https://assets7.lottiefiles.com/packages/lf20_dvik0gkn.json',
      name: 'حالة الطقس',
      action: () {},
    ),
    Cards(
      imagePath: 'https://assets4.lottiefiles.com/private_files/lf30_2putscqk.json',
      name: 'المفضلة',
      action: () {},
    ),
  ];





  
  static const List<Masjid> masjidList = [
    Masjid(
        name: 'جامع سعيد الرداد',
        city: 'الدمام',
        trawihTime: 'الساعة الثامنة مساءً',
        location: 'googlemaps',
        imagePath: 'assets/radad.jpg'),
    Masjid(
        name: 'جامع الوابل',
        city: 'الدمام',
        trawihTime: 'الساعة الثامنة مساءً',
        location: 'googlemaps',
        imagePath: 'assets/wabel.jpg'),
        Masjid(
        name: 'جامع يوسف\n بن محمد\n آل بريك\n الدوسري',
        city: 'الدمام',
        trawihTime: 'الساعة الثامنة مساءً',
        location: 'googlemaps',
        imagePath: 'assets/yosuf.jpg'),
        Masjid(
        name: 'مسجد أحمد العباد',
        city: 'الدمام',
        trawihTime: 'الساعة الثامنة مساءً',
        location: 'googlemaps',
        imagePath: 'assets/alabaad.jpg'),
        Masjid(
        name: 'مسجد منيرة\n البراهيم المنصور',
        city: 'الدمام',
        trawihTime: 'الساعة الثامنة مساءً',
        location: 'googlemaps',
        imagePath: 'assets/muneera.jpg'),
        Masjid(
        name: ' مسجد التقوى',
        city: 'الخبر',
        trawihTime: 'الساعة الثامنة مساءً',
        location: 'googlemaps',
        imagePath: 'assets/taqwa.jpg'),
        Masjid(
        name: ' جامع الإمام \nالشافعي',
        city: 'الخبر',
        trawihTime: 'الساعة الثامنة مساءً',
        location: 'googlemaps',
        imagePath: 'assets/shfaii.jpg'),
        Masjid(
        name: 'جامع الهداية',
        city: 'الخبر',
        trawihTime: 'الساعة الثامنة مساءً',
        location: 'googlemaps',
        imagePath: 'assets/hidaya.jpg'),
        Masjid(
        name: 'جامع المدينة المنورة',
        city: 'الخبر',
        trawihTime: 'الساعة الثامنة مساءً',
        location: 'googlemaps',
        imagePath: 'assets/madina.jpg'),
        Masjid(
        name: 'مسجد جوزاء القحطاني',
        city: 'الخبر',
        trawihTime: 'الساعة الثامنة مساءً',
        location: 'googlemaps',
        imagePath: 'assets/jawzaa.jpg'),
        Masjid(
        name: 'مسجد الأنصار ',
        city: 'الظهران',
        trawihTime: 'الساعة الثامنة مساءً',
        location: 'googlemaps',
        imagePath: 'assets/muneera.jpg'),
        Masjid(
        name: 'مسجد أدينيس ',
        city: 'الظهران',
        trawihTime: 'الساعة الثامنة مساءً',
        location: 'googlemaps',
        imagePath: 'assets/muneera.jpg'),
        Masjid(
        name: 'جامع ابوبكر\n الصديق ',
        city: 'الظهران',
        trawihTime: 'الساعة الثامنة مساءً',
        location: 'googlemaps',
        imagePath: 'assets/muneera.jpg'),
        Masjid(
        name: 'مسجد عثمان \nبن عفان',
        city: 'الظهران',
        trawihTime: 'الساعة الثامنة مساءً',
        location: 'googlemaps',
        imagePath: 'assets/muneera.jpg'),
        Masjid(
        name: 'مسجد عبدالرحمن \n الشلوي\n رحمه الله',
        city: 'الظهران',
        trawihTime: 'الساعة الثامنة مساءً',
        location: 'googlemaps',
        imagePath: 'assets/muneera.jpg'),

  ];
}
