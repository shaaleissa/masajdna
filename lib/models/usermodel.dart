
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:masajdna/models/masjid.dart';

part 'usermodel.freezed.dart';


@freezed
class UserModel with _$UserModel {
  factory UserModel({
    required FirebaseAuth user,
    required Masjid favoriteMasjid,
  }) = _UserModel;
	
}
