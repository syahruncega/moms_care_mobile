// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'agama.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Agama _$AgamaFromJson(Map<String, dynamic> json) {
  return _Agama.fromJson(json);
}

/// @nodoc
mixin _$Agama {
  int get id => throw _privateConstructorUsedError;
  String get agama => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgamaCopyWith<Agama> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgamaCopyWith<$Res> {
  factory $AgamaCopyWith(Agama value, $Res Function(Agama) then) =
      _$AgamaCopyWithImpl<$Res>;
  $Res call({int id, String agama, DateTime? deletedAt});
}

/// @nodoc
class _$AgamaCopyWithImpl<$Res> implements $AgamaCopyWith<$Res> {
  _$AgamaCopyWithImpl(this._value, this._then);

  final Agama _value;
  // ignore: unused_field
  final $Res Function(Agama) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? agama = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      agama: agama == freezed
          ? _value.agama
          : agama // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_AgamaCopyWith<$Res> implements $AgamaCopyWith<$Res> {
  factory _$$_AgamaCopyWith(_$_Agama value, $Res Function(_$_Agama) then) =
      __$$_AgamaCopyWithImpl<$Res>;
  @override
  $Res call({int id, String agama, DateTime? deletedAt});
}

/// @nodoc
class __$$_AgamaCopyWithImpl<$Res> extends _$AgamaCopyWithImpl<$Res>
    implements _$$_AgamaCopyWith<$Res> {
  __$$_AgamaCopyWithImpl(_$_Agama _value, $Res Function(_$_Agama) _then)
      : super(_value, (v) => _then(v as _$_Agama));

  @override
  _$_Agama get _value => super._value as _$_Agama;

  @override
  $Res call({
    Object? id = freezed,
    Object? agama = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_Agama(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      agama: agama == freezed
          ? _value.agama
          : agama // ignore: cast_nullable_to_non_nullable
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
class _$_Agama implements _Agama {
  const _$_Agama({required this.id, required this.agama, this.deletedAt});

  factory _$_Agama.fromJson(Map<String, dynamic> json) =>
      _$$_AgamaFromJson(json);

  @override
  final int id;
  @override
  final String agama;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'Agama(id: $id, agama: $agama, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Agama &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.agama, agama) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(agama),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$$_AgamaCopyWith<_$_Agama> get copyWith =>
      __$$_AgamaCopyWithImpl<_$_Agama>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AgamaToJson(
      this,
    );
  }
}

abstract class _Agama implements Agama {
  const factory _Agama(
      {required final int id,
      required final String agama,
      final DateTime? deletedAt}) = _$_Agama;

  factory _Agama.fromJson(Map<String, dynamic> json) = _$_Agama.fromJson;

  @override
  int get id;
  @override
  String get agama;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$_AgamaCopyWith<_$_Agama> get copyWith =>
      throw _privateConstructorUsedError;
}
