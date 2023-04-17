import 'package:freezed_annotation/freezed_annotation.dart';

part 'masjid.freezed.dart';

@freezed
class Masjid with _$Masjid {
  const factory Masjid(
      {
      required String name,
      required String imagePath,
      required String city,
      required String trawihTime,
      required String location,
      @Default("لا يوجد") String qiyamTime,
      }) = _Masjid;
}
