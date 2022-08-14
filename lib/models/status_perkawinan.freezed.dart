// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'status_perkawinan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatusPerkawinan _$StatusPerkawinanFromJson(Map<String, dynamic> json) {
  return _StatusPerkawinan.fromJson(json);
}

/// @nodoc
mixin _$StatusPerkawinan {
  int get id => throw _privateConstructorUsedError;
  String get statusPerkawinan => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusPerkawinanCopyWith<StatusPerkawinan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusPerkawinanCopyWith<$Res> {
  factory $StatusPerkawinanCopyWith(
          StatusPerkawinan value, $Res Function(StatusPerkawinan) then) =
      _$StatusPerkawinanCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String statusPerkawinan,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class _$StatusPerkawinanCopyWithImpl<$Res>
    implements $StatusPerkawinanCopyWith<$Res> {
  _$StatusPerkawinanCopyWithImpl(this._value, this._then);

  final StatusPerkawinan _value;
  // ignore: unused_field
  final $Res Function(StatusPerkawinan) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? statusPerkawinan = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      statusPerkawinan: statusPerkawinan == freezed
          ? _value.statusPerkawinan
          : statusPerkawinan // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_StatusPerkawinanCopyWith<$Res>
    implements $StatusPerkawinanCopyWith<$Res> {
  factory _$$_StatusPerkawinanCopyWith(
          _$_StatusPerkawinan value, $Res Function(_$_StatusPerkawinan) then) =
      __$$_StatusPerkawinanCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String statusPerkawinan,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class __$$_StatusPerkawinanCopyWithImpl<$Res>
    extends _$StatusPerkawinanCopyWithImpl<$Res>
    implements _$$_StatusPerkawinanCopyWith<$Res> {
  __$$_StatusPerkawinanCopyWithImpl(
      _$_StatusPerkawinan _value, $Res Function(_$_StatusPerkawinan) _then)
      : super(_value, (v) => _then(v as _$_StatusPerkawinan));

  @override
  _$_StatusPerkawinan get _value => super._value as _$_StatusPerkawinan;

  @override
  $Res call({
    Object? id = freezed,
    Object? statusPerkawinan = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_StatusPerkawinan(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      statusPerkawinan: statusPerkawinan == freezed
          ? _value.statusPerkawinan
          : statusPerkawinan // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatusPerkawinan implements _StatusPerkawinan {
  const _$_StatusPerkawinan(
      {required this.id,
      required this.statusPerkawinan,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  factory _$_StatusPerkawinan.fromJson(Map<String, dynamic> json) =>
      _$$_StatusPerkawinanFromJson(json);

  @override
  final int id;
  @override
  final String statusPerkawinan;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'StatusPerkawinan(id: $id, statusPerkawinan: $statusPerkawinan, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusPerkawinan &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.statusPerkawinan, statusPerkawinan) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(statusPerkawinan),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$$_StatusPerkawinanCopyWith<_$_StatusPerkawinan> get copyWith =>
      __$$_StatusPerkawinanCopyWithImpl<_$_StatusPerkawinan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusPerkawinanToJson(
      this,
    );
  }
}

abstract class _StatusPerkawinan implements StatusPerkawinan {
  const factory _StatusPerkawinan(
      {required final int id,
      required final String statusPerkawinan,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final DateTime? deletedAt}) = _$_StatusPerkawinan;

  factory _StatusPerkawinan.fromJson(Map<String, dynamic> json) =
      _$_StatusPerkawinan.fromJson;

  @override
  int get id;
  @override
  String get statusPerkawinan;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$_StatusPerkawinanCopyWith<_$_StatusPerkawinan> get copyWith =>
      throw _privateConstructorUsedError;
}
