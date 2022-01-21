// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseResponse _$$_BaseResponseFromJson(Map<String, dynamic> json) =>
    _$_BaseResponse(
      data: json['data'],
      error: json['error'] as String?,
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BaseResponseToJson(_$_BaseResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
      'meta': instance.meta,
    };
