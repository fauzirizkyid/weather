// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PageInfo _$$_PageInfoFromJson(Map<String, dynamic> json) => _$_PageInfo(
      count: json['count'] as int,
      moreRecords: json['moreRecords'] as bool,
      page: json['page'] as int,
      pageSize: json['pageSize'] as int,
      orderBy: json['orderBy'] as String,
      sortBy: json['sortBy'] as String,
    );

Map<String, dynamic> _$$_PageInfoToJson(_$_PageInfo instance) =>
    <String, dynamic>{
      'count': instance.count,
      'moreRecords': instance.moreRecords,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'orderBy': instance.orderBy,
      'sortBy': instance.sortBy,
    };
