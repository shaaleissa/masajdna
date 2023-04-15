
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cards.freezed.dart';


@freezed
class Cards with _$Cards {
  factory Cards({
    required String imagePath,
    required String name,
    required Function action,
  }) = _Cards;
	
}
