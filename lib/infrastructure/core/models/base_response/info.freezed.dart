// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageInfo _$PageInfoFromJson(Map<String, dynamic> json) {
  return _PageInfo.fromJson(json);
}

/// @nodoc
class _$PageInfoTearOff {
  const _$PageInfoTearOff();

  _PageInfo call(
      {required int count,
      required bool moreRecords,
      required int page,
      required int pageSize,
      required String orderBy,
      required String sortBy}) {
    return _PageInfo(
      count: count,
      moreRecords: moreRecords,
      page: page,
      pageSize: pageSize,
      orderBy: orderBy,
      sortBy: sortBy,
    );
  }

  PageInfo fromJson(Map<String, Object?> json) {
    return PageInfo.fromJson(json);
  }
}

/// @nodoc
const $PageInfo = _$PageInfoTearOff();

/// @nodoc
mixin _$PageInfo {
  int get count => throw _privateConstructorUsedError;
  bool get moreRecords => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  String get orderBy => throw _privateConstructorUsedError;
  String get sortBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageInfoCopyWith<PageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageInfoCopyWith<$Res> {
  factory $PageInfoCopyWith(PageInfo value, $Res Function(PageInfo) then) =
      _$PageInfoCopyWithImpl<$Res>;
  $Res call(
      {int count,
      bool moreRecords,
      int page,
      int pageSize,
      String orderBy,
      String sortBy});
}

/// @nodoc
class _$PageInfoCopyWithImpl<$Res> implements $PageInfoCopyWith<$Res> {
  _$PageInfoCopyWithImpl(this._value, this._then);

  final PageInfo _value;
  // ignore: unused_field
  final $Res Function(PageInfo) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? moreRecords = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? orderBy = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      moreRecords: moreRecords == freezed
          ? _value.moreRecords
          : moreRecords // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      orderBy: orderBy == freezed
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as String,
      sortBy: sortBy == freezed
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PageInfoCopyWith<$Res> implements $PageInfoCopyWith<$Res> {
  factory _$PageInfoCopyWith(_PageInfo value, $Res Function(_PageInfo) then) =
      __$PageInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int count,
      bool moreRecords,
      int page,
      int pageSize,
      String orderBy,
      String sortBy});
}

/// @nodoc
class __$PageInfoCopyWithImpl<$Res> extends _$PageInfoCopyWithImpl<$Res>
    implements _$PageInfoCopyWith<$Res> {
  __$PageInfoCopyWithImpl(_PageInfo _value, $Res Function(_PageInfo) _then)
      : super(_value, (v) => _then(v as _PageInfo));

  @override
  _PageInfo get _value => super._value as _PageInfo;

  @override
  $Res call({
    Object? count = freezed,
    Object? moreRecords = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? orderBy = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_PageInfo(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      moreRecords: moreRecords == freezed
          ? _value.moreRecords
          : moreRecords // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      orderBy: orderBy == freezed
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as String,
      sortBy: sortBy == freezed
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PageInfo implements _PageInfo {
  _$_PageInfo(
      {required this.count,
      required this.moreRecords,
      required this.page,
      required this.pageSize,
      required this.orderBy,
      required this.sortBy});

  factory _$_PageInfo.fromJson(Map<String, dynamic> json) =>
      _$$_PageInfoFromJson(json);

  @override
  final int count;
  @override
  final bool moreRecords;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final String orderBy;
  @override
  final String sortBy;

  @override
  String toString() {
    return 'PageInfo(count: $count, moreRecords: $moreRecords, page: $page, pageSize: $pageSize, orderBy: $orderBy, sortBy: $sortBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PageInfo &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other.moreRecords, moreRecords) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize) &&
            const DeepCollectionEquality().equals(other.orderBy, orderBy) &&
            const DeepCollectionEquality().equals(other.sortBy, sortBy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(moreRecords),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(pageSize),
      const DeepCollectionEquality().hash(orderBy),
      const DeepCollectionEquality().hash(sortBy));

  @JsonKey(ignore: true)
  @override
  _$PageInfoCopyWith<_PageInfo> get copyWith =>
      __$PageInfoCopyWithImpl<_PageInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PageInfoToJson(this);
  }
}

abstract class _PageInfo implements PageInfo {
  factory _PageInfo(
      {required int count,
      required bool moreRecords,
      required int page,
      required int pageSize,
      required String orderBy,
      required String sortBy}) = _$_PageInfo;

  factory _PageInfo.fromJson(Map<String, dynamic> json) = _$_PageInfo.fromJson;

  @override
  int get count;
  @override
  bool get moreRecords;
  @override
  int get page;
  @override
  int get pageSize;
  @override
  String get orderBy;
  @override
  String get sortBy;
  @override
  @JsonKey(ignore: true)
  _$PageInfoCopyWith<_PageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
