// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'locator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocatorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshDevices,
    required TResult Function(ErrorCallback? onError) startScan,
    required TResult Function(ErrorCallback? onError) stopScan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshDevices,
    TResult? Function(ErrorCallback? onError)? startScan,
    TResult? Function(ErrorCallback? onError)? stopScan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshDevices,
    TResult Function(ErrorCallback? onError)? startScan,
    TResult Function(ErrorCallback? onError)? stopScan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshDevices value) refreshDevices,
    required TResult Function(_StartScan value) startScan,
    required TResult Function(_StopScan value) stopScan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RefreshDevices value)? refreshDevices,
    TResult? Function(_StartScan value)? startScan,
    TResult? Function(_StopScan value)? stopScan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshDevices value)? refreshDevices,
    TResult Function(_StartScan value)? startScan,
    TResult Function(_StopScan value)? stopScan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocatorEventCopyWith<$Res> {
  factory $LocatorEventCopyWith(
          LocatorEvent value, $Res Function(LocatorEvent) then) =
      _$LocatorEventCopyWithImpl<$Res, LocatorEvent>;
}

/// @nodoc
class _$LocatorEventCopyWithImpl<$Res, $Val extends LocatorEvent>
    implements $LocatorEventCopyWith<$Res> {
  _$LocatorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RefreshDevicesCopyWith<$Res> {
  factory _$$_RefreshDevicesCopyWith(
          _$_RefreshDevices value, $Res Function(_$_RefreshDevices) then) =
      __$$_RefreshDevicesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshDevicesCopyWithImpl<$Res>
    extends _$LocatorEventCopyWithImpl<$Res, _$_RefreshDevices>
    implements _$$_RefreshDevicesCopyWith<$Res> {
  __$$_RefreshDevicesCopyWithImpl(
      _$_RefreshDevices _value, $Res Function(_$_RefreshDevices) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshDevices implements _RefreshDevices {
  const _$_RefreshDevices();

  @override
  String toString() {
    return 'LocatorEvent.refreshDevices()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RefreshDevices);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshDevices,
    required TResult Function(ErrorCallback? onError) startScan,
    required TResult Function(ErrorCallback? onError) stopScan,
  }) {
    return refreshDevices();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshDevices,
    TResult? Function(ErrorCallback? onError)? startScan,
    TResult? Function(ErrorCallback? onError)? stopScan,
  }) {
    return refreshDevices?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshDevices,
    TResult Function(ErrorCallback? onError)? startScan,
    TResult Function(ErrorCallback? onError)? stopScan,
    required TResult orElse(),
  }) {
    if (refreshDevices != null) {
      return refreshDevices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshDevices value) refreshDevices,
    required TResult Function(_StartScan value) startScan,
    required TResult Function(_StopScan value) stopScan,
  }) {
    return refreshDevices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RefreshDevices value)? refreshDevices,
    TResult? Function(_StartScan value)? startScan,
    TResult? Function(_StopScan value)? stopScan,
  }) {
    return refreshDevices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshDevices value)? refreshDevices,
    TResult Function(_StartScan value)? startScan,
    TResult Function(_StopScan value)? stopScan,
    required TResult orElse(),
  }) {
    if (refreshDevices != null) {
      return refreshDevices(this);
    }
    return orElse();
  }
}

abstract class _RefreshDevices implements LocatorEvent {
  const factory _RefreshDevices() = _$_RefreshDevices;
}

/// @nodoc
abstract class _$$_StartScanCopyWith<$Res> {
  factory _$$_StartScanCopyWith(
          _$_StartScan value, $Res Function(_$_StartScan) then) =
      __$$_StartScanCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorCallback? onError});
}

/// @nodoc
class __$$_StartScanCopyWithImpl<$Res>
    extends _$LocatorEventCopyWithImpl<$Res, _$_StartScan>
    implements _$$_StartScanCopyWith<$Res> {
  __$$_StartScanCopyWithImpl(
      _$_StartScan _value, $Res Function(_$_StartScan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onError = freezed,
  }) {
    return _then(_$_StartScan(
      onError: freezed == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as ErrorCallback?,
    ));
  }
}

/// @nodoc

class _$_StartScan implements _StartScan {
  const _$_StartScan({this.onError});

  @override
  final ErrorCallback? onError;

  @override
  String toString() {
    return 'LocatorEvent.startScan(onError: $onError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartScan &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartScanCopyWith<_$_StartScan> get copyWith =>
      __$$_StartScanCopyWithImpl<_$_StartScan>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshDevices,
    required TResult Function(ErrorCallback? onError) startScan,
    required TResult Function(ErrorCallback? onError) stopScan,
  }) {
    return startScan(onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshDevices,
    TResult? Function(ErrorCallback? onError)? startScan,
    TResult? Function(ErrorCallback? onError)? stopScan,
  }) {
    return startScan?.call(onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshDevices,
    TResult Function(ErrorCallback? onError)? startScan,
    TResult Function(ErrorCallback? onError)? stopScan,
    required TResult orElse(),
  }) {
    if (startScan != null) {
      return startScan(onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshDevices value) refreshDevices,
    required TResult Function(_StartScan value) startScan,
    required TResult Function(_StopScan value) stopScan,
  }) {
    return startScan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RefreshDevices value)? refreshDevices,
    TResult? Function(_StartScan value)? startScan,
    TResult? Function(_StopScan value)? stopScan,
  }) {
    return startScan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshDevices value)? refreshDevices,
    TResult Function(_StartScan value)? startScan,
    TResult Function(_StopScan value)? stopScan,
    required TResult orElse(),
  }) {
    if (startScan != null) {
      return startScan(this);
    }
    return orElse();
  }
}

abstract class _StartScan implements LocatorEvent {
  const factory _StartScan({final ErrorCallback? onError}) = _$_StartScan;

  ErrorCallback? get onError;
  @JsonKey(ignore: true)
  _$$_StartScanCopyWith<_$_StartScan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StopScanCopyWith<$Res> {
  factory _$$_StopScanCopyWith(
          _$_StopScan value, $Res Function(_$_StopScan) then) =
      __$$_StopScanCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorCallback? onError});
}

/// @nodoc
class __$$_StopScanCopyWithImpl<$Res>
    extends _$LocatorEventCopyWithImpl<$Res, _$_StopScan>
    implements _$$_StopScanCopyWith<$Res> {
  __$$_StopScanCopyWithImpl(
      _$_StopScan _value, $Res Function(_$_StopScan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onError = freezed,
  }) {
    return _then(_$_StopScan(
      onError: freezed == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as ErrorCallback?,
    ));
  }
}

/// @nodoc

class _$_StopScan implements _StopScan {
  const _$_StopScan({this.onError});

  @override
  final ErrorCallback? onError;

  @override
  String toString() {
    return 'LocatorEvent.stopScan(onError: $onError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StopScan &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StopScanCopyWith<_$_StopScan> get copyWith =>
      __$$_StopScanCopyWithImpl<_$_StopScan>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshDevices,
    required TResult Function(ErrorCallback? onError) startScan,
    required TResult Function(ErrorCallback? onError) stopScan,
  }) {
    return stopScan(onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshDevices,
    TResult? Function(ErrorCallback? onError)? startScan,
    TResult? Function(ErrorCallback? onError)? stopScan,
  }) {
    return stopScan?.call(onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshDevices,
    TResult Function(ErrorCallback? onError)? startScan,
    TResult Function(ErrorCallback? onError)? stopScan,
    required TResult orElse(),
  }) {
    if (stopScan != null) {
      return stopScan(onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshDevices value) refreshDevices,
    required TResult Function(_StartScan value) startScan,
    required TResult Function(_StopScan value) stopScan,
  }) {
    return stopScan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RefreshDevices value)? refreshDevices,
    TResult? Function(_StartScan value)? startScan,
    TResult? Function(_StopScan value)? stopScan,
  }) {
    return stopScan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshDevices value)? refreshDevices,
    TResult Function(_StartScan value)? startScan,
    TResult Function(_StopScan value)? stopScan,
    required TResult orElse(),
  }) {
    if (stopScan != null) {
      return stopScan(this);
    }
    return orElse();
  }
}

abstract class _StopScan implements LocatorEvent {
  const factory _StopScan({final ErrorCallback? onError}) = _$_StopScan;

  ErrorCallback? get onError;
  @JsonKey(ignore: true)
  _$$_StopScanCopyWith<_$_StopScan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocatorState {
  List<DeviceModel> get devices => throw _privateConstructorUsedError;
  bool get isScanning => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocatorStateCopyWith<LocatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocatorStateCopyWith<$Res> {
  factory $LocatorStateCopyWith(
          LocatorState value, $Res Function(LocatorState) then) =
      _$LocatorStateCopyWithImpl<$Res, LocatorState>;
  @useResult
  $Res call({List<DeviceModel> devices, bool isScanning, bool isLoading});
}

/// @nodoc
class _$LocatorStateCopyWithImpl<$Res, $Val extends LocatorState>
    implements $LocatorStateCopyWith<$Res> {
  _$LocatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devices = null,
    Object? isScanning = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      devices: null == devices
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<DeviceModel>,
      isScanning: null == isScanning
          ? _value.isScanning
          : isScanning // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocatorStateCopyWith<$Res>
    implements $LocatorStateCopyWith<$Res> {
  factory _$$_LocatorStateCopyWith(
          _$_LocatorState value, $Res Function(_$_LocatorState) then) =
      __$$_LocatorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DeviceModel> devices, bool isScanning, bool isLoading});
}

/// @nodoc
class __$$_LocatorStateCopyWithImpl<$Res>
    extends _$LocatorStateCopyWithImpl<$Res, _$_LocatorState>
    implements _$$_LocatorStateCopyWith<$Res> {
  __$$_LocatorStateCopyWithImpl(
      _$_LocatorState _value, $Res Function(_$_LocatorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devices = null,
    Object? isScanning = null,
    Object? isLoading = null,
  }) {
    return _then(_$_LocatorState(
      devices: null == devices
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<DeviceModel>,
      isScanning: null == isScanning
          ? _value.isScanning
          : isScanning // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LocatorState implements _LocatorState {
  const _$_LocatorState(
      {final List<DeviceModel> devices = const [],
      this.isScanning = false,
      this.isLoading = false})
      : _devices = devices;

  final List<DeviceModel> _devices;
  @override
  @JsonKey()
  List<DeviceModel> get devices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devices);
  }

  @override
  @JsonKey()
  final bool isScanning;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'LocatorState(devices: $devices, isScanning: $isScanning, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocatorState &&
            const DeepCollectionEquality().equals(other._devices, _devices) &&
            (identical(other.isScanning, isScanning) ||
                other.isScanning == isScanning) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_devices), isScanning, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocatorStateCopyWith<_$_LocatorState> get copyWith =>
      __$$_LocatorStateCopyWithImpl<_$_LocatorState>(this, _$identity);
}

abstract class _LocatorState implements LocatorState {
  const factory _LocatorState(
      {final List<DeviceModel> devices,
      final bool isScanning,
      final bool isLoading}) = _$_LocatorState;

  @override
  List<DeviceModel> get devices;
  @override
  bool get isScanning;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_LocatorStateCopyWith<_$_LocatorState> get copyWith =>
      throw _privateConstructorUsedError;
}
