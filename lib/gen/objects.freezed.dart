// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'objects.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MessageObjTearOff {
  const _$MessageObjTearOff();

  _MessageObj call({String message, bool sent = false}) {
    return _MessageObj(
      message: message,
      sent: sent,
    );
  }
}

// ignore: unused_element
const $MessageObj = _$MessageObjTearOff();

mixin _$MessageObj {
  String get message;
  bool get sent;

  $MessageObjCopyWith<MessageObj> get copyWith;
}

abstract class $MessageObjCopyWith<$Res> {
  factory $MessageObjCopyWith(
          MessageObj value, $Res Function(MessageObj) then) =
      _$MessageObjCopyWithImpl<$Res>;
  $Res call({String message, bool sent});
}

class _$MessageObjCopyWithImpl<$Res> implements $MessageObjCopyWith<$Res> {
  _$MessageObjCopyWithImpl(this._value, this._then);

  final MessageObj _value;
  // ignore: unused_field
  final $Res Function(MessageObj) _then;

  @override
  $Res call({
    Object message = freezed,
    Object sent = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
      sent: sent == freezed ? _value.sent : sent as bool,
    ));
  }
}

abstract class _$MessageObjCopyWith<$Res> implements $MessageObjCopyWith<$Res> {
  factory _$MessageObjCopyWith(
          _MessageObj value, $Res Function(_MessageObj) then) =
      __$MessageObjCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool sent});
}

class __$MessageObjCopyWithImpl<$Res> extends _$MessageObjCopyWithImpl<$Res>
    implements _$MessageObjCopyWith<$Res> {
  __$MessageObjCopyWithImpl(
      _MessageObj _value, $Res Function(_MessageObj) _then)
      : super(_value, (v) => _then(v as _MessageObj));

  @override
  _MessageObj get _value => super._value as _MessageObj;

  @override
  $Res call({
    Object message = freezed,
    Object sent = freezed,
  }) {
    return _then(_MessageObj(
      message: message == freezed ? _value.message : message as String,
      sent: sent == freezed ? _value.sent : sent as bool,
    ));
  }
}

class _$_MessageObj implements _MessageObj {
  _$_MessageObj({this.message, this.sent = false}) : assert(sent != null);

  @override
  final String message;
  @JsonKey(defaultValue: false)
  @override
  final bool sent;

  @override
  String toString() {
    return 'MessageObj(message: $message, sent: $sent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageObj &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.sent, sent) ||
                const DeepCollectionEquality().equals(other.sent, sent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(sent);

  @override
  _$MessageObjCopyWith<_MessageObj> get copyWith =>
      __$MessageObjCopyWithImpl<_MessageObj>(this, _$identity);
}

abstract class _MessageObj implements MessageObj {
  factory _MessageObj({String message, bool sent}) = _$_MessageObj;

  @override
  String get message;
  @override
  bool get sent;
  @override
  _$MessageObjCopyWith<_MessageObj> get copyWith;
}
