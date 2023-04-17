// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'masjid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Masjid {
  String get name => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get trawihTime => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get qiyamTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MasjidCopyWith<Masjid> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasjidCopyWith<$Res> {
  factory $MasjidCopyWith(Masjid value, $Res Function(Masjid) then) =
      _$MasjidCopyWithImpl<$Res, Masjid>;
  @useResult
  $Res call(
      {String name,
      String imagePath,
      String city,
      String trawihTime,
      String location,
      String qiyamTime});
}

/// @nodoc
class _$MasjidCopyWithImpl<$Res, $Val extends Masjid>
    implements $MasjidCopyWith<$Res> {
  _$MasjidCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imagePath = null,
    Object? city = null,
    Object? trawihTime = null,
    Object? location = null,
    Object? qiyamTime = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      trawihTime: null == trawihTime
          ? _value.trawihTime
          : trawihTime // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      qiyamTime: null == qiyamTime
          ? _value.qiyamTime
          : qiyamTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MasjidCopyWith<$Res> implements $MasjidCopyWith<$Res> {
  factory _$$_MasjidCopyWith(_$_Masjid value, $Res Function(_$_Masjid) then) =
      __$$_MasjidCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String imagePath,
      String city,
      String trawihTime,
      String location,
      String qiyamTime});
}

/// @nodoc
class __$$_MasjidCopyWithImpl<$Res>
    extends _$MasjidCopyWithImpl<$Res, _$_Masjid>
    implements _$$_MasjidCopyWith<$Res> {
  __$$_MasjidCopyWithImpl(_$_Masjid _value, $Res Function(_$_Masjid) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imagePath = null,
    Object? city = null,
    Object? trawihTime = null,
    Object? location = null,
    Object? qiyamTime = null,
  }) {
    return _then(_$_Masjid(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      trawihTime: null == trawihTime
          ? _value.trawihTime
          : trawihTime // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      qiyamTime: null == qiyamTime
          ? _value.qiyamTime
          : qiyamTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Masjid implements _Masjid {
  const _$_Masjid(
      {required this.name,
      required this.imagePath,
      required this.city,
      required this.trawihTime,
      required this.location,
      this.qiyamTime = "لا يوجد"});

  @override
  final String name;
  @override
  final String imagePath;
  @override
  final String city;
  @override
  final String trawihTime;
  @override
  final String location;
  @override
  @JsonKey()
  final String qiyamTime;

  @override
  String toString() {
    return 'Masjid(name: $name, imagePath: $imagePath, city: $city, trawihTime: $trawihTime, location: $location, qiyamTime: $qiyamTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Masjid &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.trawihTime, trawihTime) ||
                other.trawihTime == trawihTime) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.qiyamTime, qiyamTime) ||
                other.qiyamTime == qiyamTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, imagePath, city, trawihTime, location, qiyamTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MasjidCopyWith<_$_Masjid> get copyWith =>
      __$$_MasjidCopyWithImpl<_$_Masjid>(this, _$identity);
}

abstract class _Masjid implements Masjid {
  const factory _Masjid(
      {required final String name,
      required final String imagePath,
      required final String city,
      required final String trawihTime,
      required final String location,
      final String qiyamTime}) = _$_Masjid;

  @override
  String get name;
  @override
  String get imagePath;
  @override
  String get city;
  @override
  String get trawihTime;
  @override
  String get location;
  @override
  String get qiyamTime;
  @override
  @JsonKey(ignore: true)
  _$$_MasjidCopyWith<_$_Masjid> get copyWith =>
      throw _privateConstructorUsedError;
}
