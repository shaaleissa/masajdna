// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cards.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Cards {
  String get imagePath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Function get action => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardsCopyWith<Cards> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsCopyWith<$Res> {
  factory $CardsCopyWith(Cards value, $Res Function(Cards) then) =
      _$CardsCopyWithImpl<$Res, Cards>;
  @useResult
  $Res call({String imagePath, String name, Function action});
}

/// @nodoc
class _$CardsCopyWithImpl<$Res, $Val extends Cards>
    implements $CardsCopyWith<$Res> {
  _$CardsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? name = null,
    Object? action = null,
  }) {
    return _then(_value.copyWith(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Function,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardsCopyWith<$Res> implements $CardsCopyWith<$Res> {
  factory _$$_CardsCopyWith(_$_Cards value, $Res Function(_$_Cards) then) =
      __$$_CardsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imagePath, String name, Function action});
}

/// @nodoc
class __$$_CardsCopyWithImpl<$Res> extends _$CardsCopyWithImpl<$Res, _$_Cards>
    implements _$$_CardsCopyWith<$Res> {
  __$$_CardsCopyWithImpl(_$_Cards _value, $Res Function(_$_Cards) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? name = null,
    Object? action = null,
  }) {
    return _then(_$_Cards(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$_Cards implements _Cards {
  _$_Cards({required this.imagePath, required this.name, required this.action});

  @override
  final String imagePath;
  @override
  final String name;
  @override
  final Function action;

  @override
  String toString() {
    return 'Cards(imagePath: $imagePath, name: $name, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cards &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath, name, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardsCopyWith<_$_Cards> get copyWith =>
      __$$_CardsCopyWithImpl<_$_Cards>(this, _$identity);
}

abstract class _Cards implements Cards {
  factory _Cards(
      {required final String imagePath,
      required final String name,
      required final Function action}) = _$_Cards;

  @override
  String get imagePath;
  @override
  String get name;
  @override
  Function get action;
  @override
  @JsonKey(ignore: true)
  _$$_CardsCopyWith<_$_Cards> get copyWith =>
      throw _privateConstructorUsedError;
}
