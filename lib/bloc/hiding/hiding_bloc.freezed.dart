// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hiding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HidingEvent {
  ErrorCallback? get onError => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorCallback? onError) sendAudio,
    required TResult Function(ErrorCallback? onError) sendluetooth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ErrorCallback? onError)? sendAudio,
    TResult? Function(ErrorCallback? onError)? sendluetooth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorCallback? onError)? sendAudio,
    TResult Function(ErrorCallback? onError)? sendluetooth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAudio value) sendAudio,
    required TResult Function(_SendBluetooth value) sendluetooth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAudio value)? sendAudio,
    TResult? Function(_SendBluetooth value)? sendluetooth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAudio value)? sendAudio,
    TResult Function(_SendBluetooth value)? sendluetooth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HidingEventCopyWith<HidingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HidingEventCopyWith<$Res> {
  factory $HidingEventCopyWith(
          HidingEvent value, $Res Function(HidingEvent) then) =
      _$HidingEventCopyWithImpl<$Res, HidingEvent>;
  @useResult
  $Res call({ErrorCallback? onError});
}

/// @nodoc
class _$HidingEventCopyWithImpl<$Res, $Val extends HidingEvent>
    implements $HidingEventCopyWith<$Res> {
  _$HidingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onError = freezed,
  }) {
    return _then(_value.copyWith(
      onError: freezed == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as ErrorCallback?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SendAudioCopyWith<$Res>
    implements $HidingEventCopyWith<$Res> {
  factory _$$_SendAudioCopyWith(
          _$_SendAudio value, $Res Function(_$_SendAudio) then) =
      __$$_SendAudioCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ErrorCallback? onError});
}

/// @nodoc
class __$$_SendAudioCopyWithImpl<$Res>
    extends _$HidingEventCopyWithImpl<$Res, _$_SendAudio>
    implements _$$_SendAudioCopyWith<$Res> {
  __$$_SendAudioCopyWithImpl(
      _$_SendAudio _value, $Res Function(_$_SendAudio) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onError = freezed,
  }) {
    return _then(_$_SendAudio(
      onError: freezed == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as ErrorCallback?,
    ));
  }
}

/// @nodoc

class _$_SendAudio implements _SendAudio {
  const _$_SendAudio({this.onError});

  @override
  final ErrorCallback? onError;

  @override
  String toString() {
    return 'HidingEvent.sendAudio(onError: $onError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendAudio &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendAudioCopyWith<_$_SendAudio> get copyWith =>
      __$$_SendAudioCopyWithImpl<_$_SendAudio>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorCallback? onError) sendAudio,
    required TResult Function(ErrorCallback? onError) sendluetooth,
  }) {
    return sendAudio(onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ErrorCallback? onError)? sendAudio,
    TResult? Function(ErrorCallback? onError)? sendluetooth,
  }) {
    return sendAudio?.call(onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorCallback? onError)? sendAudio,
    TResult Function(ErrorCallback? onError)? sendluetooth,
    required TResult orElse(),
  }) {
    if (sendAudio != null) {
      return sendAudio(onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAudio value) sendAudio,
    required TResult Function(_SendBluetooth value) sendluetooth,
  }) {
    return sendAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAudio value)? sendAudio,
    TResult? Function(_SendBluetooth value)? sendluetooth,
  }) {
    return sendAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAudio value)? sendAudio,
    TResult Function(_SendBluetooth value)? sendluetooth,
    required TResult orElse(),
  }) {
    if (sendAudio != null) {
      return sendAudio(this);
    }
    return orElse();
  }
}

abstract class _SendAudio implements HidingEvent {
  const factory _SendAudio({final ErrorCallback? onError}) = _$_SendAudio;

  @override
  ErrorCallback? get onError;
  @override
  @JsonKey(ignore: true)
  _$$_SendAudioCopyWith<_$_SendAudio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendBluetoothCopyWith<$Res>
    implements $HidingEventCopyWith<$Res> {
  factory _$$_SendBluetoothCopyWith(
          _$_SendBluetooth value, $Res Function(_$_SendBluetooth) then) =
      __$$_SendBluetoothCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ErrorCallback? onError});
}

/// @nodoc
class __$$_SendBluetoothCopyWithImpl<$Res>
    extends _$HidingEventCopyWithImpl<$Res, _$_SendBluetooth>
    implements _$$_SendBluetoothCopyWith<$Res> {
  __$$_SendBluetoothCopyWithImpl(
      _$_SendBluetooth _value, $Res Function(_$_SendBluetooth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onError = freezed,
  }) {
    return _then(_$_SendBluetooth(
      onError: freezed == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as ErrorCallback?,
    ));
  }
}

/// @nodoc

class _$_SendBluetooth implements _SendBluetooth {
  const _$_SendBluetooth({this.onError});

  @override
  final ErrorCallback? onError;

  @override
  String toString() {
    return 'HidingEvent.sendluetooth(onError: $onError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendBluetooth &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendBluetoothCopyWith<_$_SendBluetooth> get copyWith =>
      __$$_SendBluetoothCopyWithImpl<_$_SendBluetooth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorCallback? onError) sendAudio,
    required TResult Function(ErrorCallback? onError) sendluetooth,
  }) {
    return sendluetooth(onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ErrorCallback? onError)? sendAudio,
    TResult? Function(ErrorCallback? onError)? sendluetooth,
  }) {
    return sendluetooth?.call(onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorCallback? onError)? sendAudio,
    TResult Function(ErrorCallback? onError)? sendluetooth,
    required TResult orElse(),
  }) {
    if (sendluetooth != null) {
      return sendluetooth(onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAudio value) sendAudio,
    required TResult Function(_SendBluetooth value) sendluetooth,
  }) {
    return sendluetooth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAudio value)? sendAudio,
    TResult? Function(_SendBluetooth value)? sendluetooth,
  }) {
    return sendluetooth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAudio value)? sendAudio,
    TResult Function(_SendBluetooth value)? sendluetooth,
    required TResult orElse(),
  }) {
    if (sendluetooth != null) {
      return sendluetooth(this);
    }
    return orElse();
  }
}

abstract class _SendBluetooth implements HidingEvent {
  const factory _SendBluetooth({final ErrorCallback? onError}) =
      _$_SendBluetooth;

  @override
  ErrorCallback? get onError;
  @override
  @JsonKey(ignore: true)
  _$$_SendBluetoothCopyWith<_$_SendBluetooth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HidingState {
  String get id => throw _privateConstructorUsedError;
  bool get isSending => throw _privateConstructorUsedError;
  SingalType get singalType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HidingStateCopyWith<HidingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HidingStateCopyWith<$Res> {
  factory $HidingStateCopyWith(
          HidingState value, $Res Function(HidingState) then) =
      _$HidingStateCopyWithImpl<$Res, HidingState>;
  @useResult
  $Res call({String id, bool isSending, SingalType singalType});
}

/// @nodoc
class _$HidingStateCopyWithImpl<$Res, $Val extends HidingState>
    implements $HidingStateCopyWith<$Res> {
  _$HidingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isSending = null,
    Object? singalType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isSending: null == isSending
          ? _value.isSending
          : isSending // ignore: cast_nullable_to_non_nullable
              as bool,
      singalType: null == singalType
          ? _value.singalType
          : singalType // ignore: cast_nullable_to_non_nullable
              as SingalType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HidingStateCopyWith<$Res>
    implements $HidingStateCopyWith<$Res> {
  factory _$$_HidingStateCopyWith(
          _$_HidingState value, $Res Function(_$_HidingState) then) =
      __$$_HidingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isSending, SingalType singalType});
}

/// @nodoc
class __$$_HidingStateCopyWithImpl<$Res>
    extends _$HidingStateCopyWithImpl<$Res, _$_HidingState>
    implements _$$_HidingStateCopyWith<$Res> {
  __$$_HidingStateCopyWithImpl(
      _$_HidingState _value, $Res Function(_$_HidingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isSending = null,
    Object? singalType = null,
  }) {
    return _then(_$_HidingState(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isSending: null == isSending
          ? _value.isSending
          : isSending // ignore: cast_nullable_to_non_nullable
              as bool,
      singalType: null == singalType
          ? _value.singalType
          : singalType // ignore: cast_nullable_to_non_nullable
              as SingalType,
    ));
  }
}

/// @nodoc

class _$_HidingState implements _HidingState {
  const _$_HidingState(
      {required this.id, required this.isSending, required this.singalType});

  @override
  final String id;
  @override
  final bool isSending;
  @override
  final SingalType singalType;

  @override
  String toString() {
    return 'HidingState(id: $id, isSending: $isSending, singalType: $singalType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HidingState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isSending, isSending) ||
                other.isSending == isSending) &&
            (identical(other.singalType, singalType) ||
                other.singalType == singalType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isSending, singalType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HidingStateCopyWith<_$_HidingState> get copyWith =>
      __$$_HidingStateCopyWithImpl<_$_HidingState>(this, _$identity);
}

abstract class _HidingState implements HidingState {
  const factory _HidingState(
      {required final String id,
      required final bool isSending,
      required final SingalType singalType}) = _$_HidingState;

  @override
  String get id;
  @override
  bool get isSending;
  @override
  SingalType get singalType;
  @override
  @JsonKey(ignore: true)
  _$$_HidingStateCopyWith<_$_HidingState> get copyWith =>
      throw _privateConstructorUsedError;
}
