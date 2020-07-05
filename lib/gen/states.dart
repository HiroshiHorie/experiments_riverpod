import 'package:freezed_annotation/freezed_annotation.dart';

part 'states.freezed.dart';

@freezed
abstract class LoggerState with _$LoggerState {
  //

  factory LoggerState({
    @Default(true) bool visible,
    @Default([]) List<String> logs,
  }) = _LoggerState;
}

@freezed
abstract class InboxState with _$InboxState {
  //

  factory InboxState({
    String selectedUserId,
    @Default([]) List<String> userIds,
  }) = _InboxState;
}
