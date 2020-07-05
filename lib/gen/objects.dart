import 'package:freezed_annotation/freezed_annotation.dart';

part 'objects.freezed.dart';

@freezed
abstract class MessageObj with _$MessageObj {
  //

  factory MessageObj({
    String message,
    @Default(false) bool sent,
  }) = _MessageObj;
}
