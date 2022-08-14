// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pendidikan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pendidikan _$PendidikanFromJson(Map<String, dynamic> json) {
  return _Pendidikan.fromJson(json);
}

/// @nodoc
mixin _$Pendidikan {
  int get id => throw _privateConstructorUsedError;
  String get pendidikan => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PendidikanCopyWith<Pendidikan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendidikanCopyWith<$Res> {
  factory $PendidikanCopyWith(
          Pendidikan value, $Res Function(Pendidikan) then) =
      _$PendidikanCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String pendidikan,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class _$PendidikanCopyWithImpl<$Res> implements $PendidikanCopyWith<$Res> {
  _$PendidikanCopyWithImpl(this._value, this._then);

  final Pendidikan _value;
  // ignore: unused_field
  final $Res Function(Pendidikan) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? pendidikan = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pendidikan: pendidikan == freezed
          ? _value.pendidikan
          : pendidikan // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_PendidikanCopyWith<$Res>
    implements $PendidikanCopyWith<$Res> {
  factory _$$_PendidikanCopyWith(
          _$_Pendidikan value, $Res Function(_$_Pendidikan) then) =
      __$$_PendidikanCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String pendidikan,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class __$$_PendidikanCopyWithImpl<$Res> extends _$PendidikanCopyWithImpl<$Res>
    implements _$$_PendidikanCopyWith<$Res> {
  __$$_PendidikanCopyWithImpl(
      _$_Pendidikan _value, $Res Function(_$_Pendidikan) _then)
      : super(_value, (v) => _then(v as _$_Pendidikan));

  @override
  _$_Pendidikan get _value => super._value as _$_Pendidikan;

  @override
  $Res call({
    Object? id = freezed,
    Object? pendidikan = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_Pendidikan(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pendidikan: pendidikan == freezed
          ? _value.pendidikan
          : pendidikan // ignore: cast_nullable_to_non_nullable
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
class _$_Pendidikan implements _Pendidikan {
  const _$_Pendidikan(
      {required this.id,
      required this.pendidikan,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  factory _$_Pendidikan.fromJson(Map<String, dynamic> json) =>
      _$$_PendidikanFromJson(json);

  @override
  final int id;
  @override
  final String pendidikan;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'Pendidikan(id: $id, pendidikan: $pendidikan, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pendidikan &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.pendidikan, pendidikan) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(pendidikan),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$$_PendidikanCopyWith<_$_Pendidikan> get copyWith =>
      __$$_PendidikanCopyWithImpl<_$_Pendidikan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PendidikanToJson(
      this,
    );
  }
}

abstract class _Pendidikan implements Pendidikan {
  const factory _Pendidikan(
      {required final int id,
      required final String pendidikan,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final DateTime? deletedAt}) = _$_Pendidikan;

  factory _Pendidikan.fromJson(Map<String, dynamic> json) =
      _$_Pendidikan.fromJson;

  @override
  int get id;
  @override
  String get pendidikan;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$_PendidikanCopyWith<_$_Pendidikan> get copyWith =>
      throw _privateConstructorUsedError;
}
