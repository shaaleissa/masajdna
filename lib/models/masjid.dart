import 'package:freezed_annotation/freezed_annotation.dart';

part 'masjid.freezed.dart';

@freezed
class Masjid with _$Masjid {
  const factory Masjid(
      {required String name,
      required String city,
      required String trawihTime,
      String? qiyamTime,
      required String location}) = _Masjid;
}
