// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoggerStateTearOff {
  const _$LoggerStateTearOff();

  _LoggerState call({bool visible = true, List<String> logs = const []}) {
    return _LoggerState(
      visible: visible,
      logs: logs,
    );
  }
}

// ignore: unused_element
const $LoggerState = _$LoggerStateTearOff();

mixin _$LoggerState {
  bool get visible;
  List<String> get logs;

  $LoggerStateCopyWith<LoggerState> get copyWith;
}

abstract class $LoggerStateCopyWith<$Res> {
  factory $LoggerStateCopyWith(
          LoggerState value, $Res Function(LoggerState) then) =
      _$LoggerStateCopyWithImpl<$Res>;
  $Res call({bool visible, List<String> logs});
}

class _$LoggerStateCopyWithImpl<$Res> implements $LoggerStateCopyWith<$Res> {
  _$LoggerStateCopyWithImpl(this._value, this._then);

  final LoggerState _value;
  // ignore: unused_field
  final $Res Function(LoggerState) _then;

  @override
  $Res call({
    Object visible = freezed,
    Object logs = freezed,
  }) {
    return _then(_value.copyWith(
      visible: visible == freezed ? _value.visible : visible as bool,
      logs: logs == freezed ? _value.logs : logs as List<String>,
    ));
  }
}

abstract class _$LoggerStateCopyWith<$Res>
    implements $LoggerStateCopyWith<$Res> {
  factory _$LoggerStateCopyWith(
          _LoggerState value, $Res Function(_LoggerState) then) =
      __$LoggerStateCopyWithImpl<$Res>;
  @override
  $Res call({bool visible, List<String> logs});
}

class __$LoggerStateCopyWithImpl<$Res> extends _$LoggerStateCopyWithImpl<$Res>
    implements _$LoggerStateCopyWith<$Res> {
  __$LoggerStateCopyWithImpl(
      _LoggerState _value, $Res Function(_LoggerState) _then)
      : super(_value, (v) => _then(v as _LoggerState));

  @override
  _LoggerState get _value => super._value as _LoggerState;

  @override
  $Res call({
    Object visible = freezed,
    Object logs = freezed,
  }) {
    return _then(_LoggerState(
      visible: visible == freezed ? _value.visible : visible as bool,
      logs: logs == freezed ? _value.logs : logs as List<String>,
    ));
  }
}

class _$_LoggerState implements _LoggerState {
  _$_LoggerState({this.visible = true, this.logs = const []})
      : assert(visible != null),
        assert(logs != null);

  @JsonKey(defaultValue: true)
  @override
  final bool visible;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> logs;

  @override
  String toString() {
    return 'LoggerState(visible: $visible, logs: $logs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoggerState &&
            (identical(other.visible, visible) ||
                const DeepCollectionEquality()
                    .equals(other.visible, visible)) &&
            (identical(other.logs, logs) ||
                const DeepCollectionEquality().equals(other.logs, logs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(visible) ^
      const DeepCollectionEquality().hash(logs);

  @override
  _$LoggerStateCopyWith<_LoggerState> get copyWith =>
      __$LoggerStateCopyWithImpl<_LoggerState>(this, _$identity);
}

abstract class _LoggerState implements LoggerState {
  factory _LoggerState({bool visible, List<String> logs}) = _$_LoggerState;

  @override
  bool get visible;
  @override
  List<String> get logs;
  @override
  _$LoggerStateCopyWith<_LoggerState> get copyWith;
}

class _$InboxStateTearOff {
  const _$InboxStateTearOff();

  _InboxState call({String selectedUserId, List<String> userIds = const []}) {
    return _InboxState(
      selectedUserId: selectedUserId,
      userIds: userIds,
    );
  }
}

// ignore: unused_element
const $InboxState = _$InboxStateTearOff();

mixin _$InboxState {
  String get selectedUserId;
  List<String> get userIds;

  $InboxStateCopyWith<InboxState> get copyWith;
}

abstract class $InboxStateCopyWith<$Res> {
  factory $InboxStateCopyWith(
          InboxState value, $Res Function(InboxState) then) =
      _$InboxStateCopyWithImpl<$Res>;
  $Res call({String selectedUserId, List<String> userIds});
}

class _$InboxStateCopyWithImpl<$Res> implements $InboxStateCopyWith<$Res> {
  _$InboxStateCopyWithImpl(this._value, this._then);

  final InboxState _value;
  // ignore: unused_field
  final $Res Function(InboxState) _then;

  @override
  $Res call({
    Object selectedUserId = freezed,
    Object userIds = freezed,
  }) {
    return _then(_value.copyWith(
      selectedUserId: selectedUserId == freezed
          ? _value.selectedUserId
          : selectedUserId as String,
      userIds: userIds == freezed ? _value.userIds : userIds as List<String>,
    ));
  }
}

abstract class _$InboxStateCopyWith<$Res> implements $InboxStateCopyWith<$Res> {
  factory _$InboxStateCopyWith(
          _InboxState value, $Res Function(_InboxState) then) =
      __$InboxStateCopyWithImpl<$Res>;
  @override
  $Res call({String selectedUserId, List<String> userIds});
}

class __$InboxStateCopyWithImpl<$Res> extends _$InboxStateCopyWithImpl<$Res>
    implements _$InboxStateCopyWith<$Res> {
  __$InboxStateCopyWithImpl(
      _InboxState _value, $Res Function(_InboxState) _then)
      : super(_value, (v) => _then(v as _InboxState));

  @override
  _InboxState get _value => super._value as _InboxState;

  @override
  $Res call({
    Object selectedUserId = freezed,
    Object userIds = freezed,
  }) {
    return _then(_InboxState(
      selectedUserId: selectedUserId == freezed
          ? _value.selectedUserId
          : selectedUserId as String,
      userIds: userIds == freezed ? _value.userIds : userIds as List<String>,
    ));
  }
}

class _$_InboxState implements _InboxState {
  _$_InboxState({this.selectedUserId, this.userIds = const []})
      : assert(userIds != null);

  @override
  final String selectedUserId;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> userIds;

  @override
  String toString() {
    return 'InboxState(selectedUserId: $selectedUserId, userIds: $userIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InboxState &&
            (identical(other.selectedUserId, selectedUserId) ||
                const DeepCollectionEquality()
                    .equals(other.selectedUserId, selectedUserId)) &&
            (identical(other.userIds, userIds) ||
                const DeepCollectionEquality().equals(other.userIds, userIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedUserId) ^
      const DeepCollectionEquality().hash(userIds);

  @override
  _$InboxStateCopyWith<_InboxState> get copyWith =>
      __$InboxStateCopyWithImpl<_InboxState>(this, _$identity);
}

abstract class _InboxState implements InboxState {
  factory _InboxState({String selectedUserId, List<String> userIds}) =
      _$_InboxState;

  @override
  String get selectedUserId;
  @override
  List<String> get userIds;
  @override
  _$InboxStateCopyWith<_InboxState> get copyWith;
}

class _$MessagesStateTearOff {
  const _$MessagesStateTearOff();

  _MessagesState call(
      {bool busy = true, List<MessageObj> messages = const []}) {
    return _MessagesState(
      busy: busy,
      messages: messages,
    );
  }
}

// ignore: unused_element
const $MessagesState = _$MessagesStateTearOff();

mixin _$MessagesState {
  bool get busy;
  List<MessageObj> get messages;

  $MessagesStateCopyWith<MessagesState> get copyWith;
}

abstract class $MessagesStateCopyWith<$Res> {
  factory $MessagesStateCopyWith(
          MessagesState value, $Res Function(MessagesState) then) =
      _$MessagesStateCopyWithImpl<$Res>;
  $Res call({bool busy, List<MessageObj> messages});
}

class _$MessagesStateCopyWithImpl<$Res>
    implements $MessagesStateCopyWith<$Res> {
  _$MessagesStateCopyWithImpl(this._value, this._then);

  final MessagesState _value;
  // ignore: unused_field
  final $Res Function(MessagesState) _then;

  @override
  $Res call({
    Object busy = freezed,
    Object messages = freezed,
  }) {
    return _then(_value.copyWith(
      busy: busy == freezed ? _value.busy : busy as bool,
      messages:
          messages == freezed ? _value.messages : messages as List<MessageObj>,
    ));
  }
}

abstract class _$MessagesStateCopyWith<$Res>
    implements $MessagesStateCopyWith<$Res> {
  factory _$MessagesStateCopyWith(
          _MessagesState value, $Res Function(_MessagesState) then) =
      __$MessagesStateCopyWithImpl<$Res>;
  @override
  $Res call({bool busy, List<MessageObj> messages});
}

class __$MessagesStateCopyWithImpl<$Res>
    extends _$MessagesStateCopyWithImpl<$Res>
    implements _$MessagesStateCopyWith<$Res> {
  __$MessagesStateCopyWithImpl(
      _MessagesState _value, $Res Function(_MessagesState) _then)
      : super(_value, (v) => _then(v as _MessagesState));

  @override
  _MessagesState get _value => super._value as _MessagesState;

  @override
  $Res call({
    Object busy = freezed,
    Object messages = freezed,
  }) {
    return _then(_MessagesState(
      busy: busy == freezed ? _value.busy : busy as bool,
      messages:
          messages == freezed ? _value.messages : messages as List<MessageObj>,
    ));
  }
}

class _$_MessagesState implements _MessagesState {
  _$_MessagesState({this.busy = true, this.messages = const []})
      : assert(busy != null),
        assert(messages != null);

  @JsonKey(defaultValue: true)
  @override
  final bool busy;
  @JsonKey(defaultValue: const [])
  @override
  final List<MessageObj> messages;

  @override
  String toString() {
    return 'MessagesState(busy: $busy, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessagesState &&
            (identical(other.busy, busy) ||
                const DeepCollectionEquality().equals(other.busy, busy)) &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(busy) ^
      const DeepCollectionEquality().hash(messages);

  @override
  _$MessagesStateCopyWith<_MessagesState> get copyWith =>
      __$MessagesStateCopyWithImpl<_MessagesState>(this, _$identity);
}

abstract class _MessagesState implements MessagesState {
  factory _MessagesState({bool busy, List<MessageObj> messages}) =
      _$_MessagesState;

  @override
  bool get busy;
  @override
  List<MessageObj> get messages;
  @override
  _$MessagesStateCopyWith<_MessagesState> get copyWith;
}
