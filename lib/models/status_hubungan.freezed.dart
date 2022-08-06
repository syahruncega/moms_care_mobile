// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'status_hubungan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatusHubungan _$StatusHubunganFromJson(Map<String, dynamic> json) {
  return _StatusHubungan.fromJson(json);
}

/// @nodoc
mixin _$StatusHubungan {
  int get id => throw _privateConstructorUsedError;
  String get statusHubungan => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusHubunganCopyWith<StatusHubungan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusHubunganCopyWith<$Res> {
  factory $StatusHubunganCopyWith(
          StatusHubungan value, $Res Function(StatusHubungan) then) =
      _$StatusHubunganCopyWithImpl<$Res>;
  $Res call({int id, String statusHubungan, DateTime? deletedAt});
}

/// @nodoc
class _$StatusHubunganCopyWithImpl<$Res>
    implements $StatusHubunganCopyWith<$Res> {
  _$StatusHubunganCopyWithImpl(this._value, this._then);

  final StatusHubungan _value;
  // ignore: unused_field
  final $Res Function(StatusHubungan) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? statusHubungan = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      statusHubungan: statusHubungan == freezed
          ? _value.statusHubungan
          : statusHubungan // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_StatusHubunganCopyWith<$Res>
    implements $StatusHubunganCopyWith<$Res> {
  factory _$$_StatusHubunganCopyWith(
          _$_StatusHubungan value, $Res Function(_$_StatusHubungan) then) =
      __$$_StatusHubunganCopyWithImpl<$Res>;
  @override
  $Res call({int id, String statusHubungan, DateTime? deletedAt});
}

/// @nodoc
class __$$_StatusHubunganCopyWithImpl<$Res>
    extends _$StatusHubunganCopyWithImpl<$Res>
    implements _$$_StatusHubunganCopyWith<$Res> {
  __$$_StatusHubunganCopyWithImpl(
      _$_StatusHubungan _value, $Res Function(_$_StatusHubungan) _then)
      : super(_value, (v) => _then(v as _$_StatusHubungan));

  @override
  _$_StatusHubungan get _value => super._value as _$_StatusHubungan;

  @override
  $Res call({
    Object? id = freezed,
    Object? statusHubungan = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_StatusHubungan(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      statusHubungan: statusHubungan == freezed
          ? _value.statusHubungan
          : statusHubungan // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatusHubungan implements _StatusHubungan {
  const _$_StatusHubungan(
      {required this.id, required this.statusHubungan, this.deletedAt});

  factory _$_StatusHubungan.fromJson(Map<String, dynamic> json) =>
      _$$_StatusHubunganFromJson(json);

  @override
  final int id;
  @override
  final String statusHubungan;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'StatusHubungan(id: $id, statusHubungan: $statusHubungan, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusHubungan &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.statusHubungan, statusHubungan) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(statusHubungan),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$$_StatusHubunganCopyWith<_$_StatusHubungan> get copyWith =>
      __$$_StatusHubunganCopyWithImpl<_$_StatusHubungan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusHubunganToJson(
      this,
    );
  }
}

abstract class _StatusHubungan implements StatusHubungan {
  const factory _StatusHubungan(
      {required final int id,
      required final String statusHubungan,
      final DateTime? deletedAt}) = _$_StatusHubungan;

  factory _StatusHubungan.fromJson(Map<String, dynamic> json) =
      _$_StatusHubungan.fromJson;

  @override
  int get id;
  @override
  String get statusHubungan;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$_StatusHubunganCopyWith<_$_StatusHubungan> get copyWith =>
      throw _privateConstructorUsedError;
}
