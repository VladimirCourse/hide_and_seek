// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleAllDevices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleAllDevices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleAllDevices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleAllDevices value) toggleAllDevices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleAllDevices value)? toggleAllDevices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleAllDevices value)? toggleAllDevices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoEventCopyWith<$Res> {
  factory $InfoEventCopyWith(InfoEvent value, $Res Function(InfoEvent) then) =
      _$InfoEventCopyWithImpl<$Res, InfoEvent>;
}

/// @nodoc
class _$InfoEventCopyWithImpl<$Res, $Val extends InfoEvent>
    implements $InfoEventCopyWith<$Res> {
  _$InfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ToggleAllDevicesCopyWith<$Res> {
  factory _$$_ToggleAllDevicesCopyWith(
          _$_ToggleAllDevices value, $Res Function(_$_ToggleAllDevices) then) =
      __$$_ToggleAllDevicesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ToggleAllDevicesCopyWithImpl<$Res>
    extends _$InfoEventCopyWithImpl<$Res, _$_ToggleAllDevices>
    implements _$$_ToggleAllDevicesCopyWith<$Res> {
  __$$_ToggleAllDevicesCopyWithImpl(
      _$_ToggleAllDevices _value, $Res Function(_$_ToggleAllDevices) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ToggleAllDevices implements _ToggleAllDevices {
  const _$_ToggleAllDevices();

  @override
  String toString() {
    return 'InfoEvent.toggleAllDevices()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ToggleAllDevices);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleAllDevices,
  }) {
    return toggleAllDevices();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleAllDevices,
  }) {
    return toggleAllDevices?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleAllDevices,
    required TResult orElse(),
  }) {
    if (toggleAllDevices != null) {
      return toggleAllDevices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleAllDevices value) toggleAllDevices,
  }) {
    return toggleAllDevices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleAllDevices value)? toggleAllDevices,
  }) {
    return toggleAllDevices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleAllDevices value)? toggleAllDevices,
    required TResult orElse(),
  }) {
    if (toggleAllDevices != null) {
      return toggleAllDevices(this);
    }
    return orElse();
  }
}

abstract class _ToggleAllDevices implements InfoEvent {
  const factory _ToggleAllDevices() = _$_ToggleAllDevices;
}

/// @nodoc
mixin _$InfoState {
  bool get showAllDevices => throw _privateConstructorUsedError;
  Map<String, String> get audioIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InfoStateCopyWith<InfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoStateCopyWith<$Res> {
  factory $InfoStateCopyWith(InfoState value, $Res Function(InfoState) then) =
      _$InfoStateCopyWithImpl<$Res, InfoState>;
  @useResult
  $Res call({bool showAllDevices, Map<String, String> audioIds});
}

/// @nodoc
class _$InfoStateCopyWithImpl<$Res, $Val extends InfoState>
    implements $InfoStateCopyWith<$Res> {
  _$InfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showAllDevices = null,
    Object? audioIds = null,
  }) {
    return _then(_value.copyWith(
      showAllDevices: null == showAllDevices
          ? _value.showAllDevices
          : showAllDevices // ignore: cast_nullable_to_non_nullable
              as bool,
      audioIds: null == audioIds
          ? _value.audioIds
          : audioIds // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InfoStateCopyWith<$Res> implements $InfoStateCopyWith<$Res> {
  factory _$$_InfoStateCopyWith(
          _$_InfoState value, $Res Function(_$_InfoState) then) =
      __$$_InfoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showAllDevices, Map<String, String> audioIds});
}

/// @nodoc
class __$$_InfoStateCopyWithImpl<$Res>
    extends _$InfoStateCopyWithImpl<$Res, _$_InfoState>
    implements _$$_InfoStateCopyWith<$Res> {
  __$$_InfoStateCopyWithImpl(
      _$_InfoState _value, $Res Function(_$_InfoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showAllDevices = null,
    Object? audioIds = null,
  }) {
    return _then(_$_InfoState(
      showAllDevices: null == showAllDevices
          ? _value.showAllDevices
          : showAllDevices // ignore: cast_nullable_to_non_nullable
              as bool,
      audioIds: null == audioIds
          ? _value._audioIds
          : audioIds // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$_InfoState implements _InfoState {
  const _$_InfoState(
      {required this.showAllDevices,
      required final Map<String, String> audioIds})
      : _audioIds = audioIds;

  @override
  final bool showAllDevices;
  final Map<String, String> _audioIds;
  @override
  Map<String, String> get audioIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_audioIds);
  }

  @override
  String toString() {
    return 'InfoState(showAllDevices: $showAllDevices, audioIds: $audioIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfoState &&
            (identical(other.showAllDevices, showAllDevices) ||
                other.showAllDevices == showAllDevices) &&
            const DeepCollectionEquality().equals(other._audioIds, _audioIds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showAllDevices,
      const DeepCollectionEquality().hash(_audioIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfoStateCopyWith<_$_InfoState> get copyWith =>
      __$$_InfoStateCopyWithImpl<_$_InfoState>(this, _$identity);
}

abstract class _InfoState implements InfoState {
  const factory _InfoState(
      {required final bool showAllDevices,
      required final Map<String, String> audioIds}) = _$_InfoState;

  @override
  bool get showAllDevices;
  @override
  Map<String, String> get audioIds;
  @override
  @JsonKey(ignore: true)
  _$$_InfoStateCopyWith<_$_InfoState> get copyWith =>
      throw _privateConstructorUsedError;
}
