// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cities_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CitiesModel _$CitiesModelFromJson(Map<String, dynamic> json) {
  return _CitiesModel.fromJson(json);
}

/// @nodoc
class _$CitiesModelTearOff {
  const _$CitiesModelTearOff();

  _CitiesModel call(
      {required int id, required String name, required String country}) {
    return _CitiesModel(
      id: id,
      name: name,
      country: country,
    );
  }

  CitiesModel fromJson(Map<String, Object?> json) {
    return CitiesModel.fromJson(json);
  }
}

/// @nodoc
const $CitiesModel = _$CitiesModelTearOff();

/// @nodoc
mixin _$CitiesModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitiesModelCopyWith<CitiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesModelCopyWith<$Res> {
  factory $CitiesModelCopyWith(
          CitiesModel value, $Res Function(CitiesModel) then) =
      _$CitiesModelCopyWithImpl<$Res>;
  $Res call({int id, String name, String country});
}

/// @nodoc
class _$CitiesModelCopyWithImpl<$Res> implements $CitiesModelCopyWith<$Res> {
  _$CitiesModelCopyWithImpl(this._value, this._then);

  final CitiesModel _value;
  // ignore: unused_field
  final $Res Function(CitiesModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CitiesModelCopyWith<$Res>
    implements $CitiesModelCopyWith<$Res> {
  factory _$CitiesModelCopyWith(
          _CitiesModel value, $Res Function(_CitiesModel) then) =
      __$CitiesModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String country});
}

/// @nodoc
class __$CitiesModelCopyWithImpl<$Res> extends _$CitiesModelCopyWithImpl<$Res>
    implements _$CitiesModelCopyWith<$Res> {
  __$CitiesModelCopyWithImpl(
      _CitiesModel _value, $Res Function(_CitiesModel) _then)
      : super(_value, (v) => _then(v as _CitiesModel));

  @override
  _CitiesModel get _value => super._value as _CitiesModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? country = freezed,
  }) {
    return _then(_CitiesModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CitiesModel implements _CitiesModel {
  _$_CitiesModel({required this.id, required this.name, required this.country});

  factory _$_CitiesModel.fromJson(Map<String, dynamic> json) =>
      _$$_CitiesModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String country;

  @override
  String toString() {
    return 'CitiesModel(id: $id, name: $name, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CitiesModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.country, country));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(country));

  @JsonKey(ignore: true)
  @override
  _$CitiesModelCopyWith<_CitiesModel> get copyWith =>
      __$CitiesModelCopyWithImpl<_CitiesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CitiesModelToJson(this);
  }
}

abstract class _CitiesModel implements CitiesModel {
  factory _CitiesModel(
      {required int id,
      required String name,
      required String country}) = _$_CitiesModel;

  factory _CitiesModel.fromJson(Map<String, dynamic> json) =
      _$_CitiesModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get country;
  @override
  @JsonKey(ignore: true)
  _$CitiesModelCopyWith<_CitiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
