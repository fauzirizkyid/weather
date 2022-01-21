// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Meta _$$_MetaFromJson(Map<String, dynamic> json) => _$_Meta(
      info: json['info'] == null
          ? null
          : PageInfo.fromJson(json['info'] as Map<String, dynamic>),
      message: json['message'] as String,
      success: json['success'] as bool,
      statusCode: json['statusCode'] as int,
    );

Map<String, dynamic> _$$_MetaToJson(_$_Meta instance) => <String, dynamic>{
      'info': instance.info,
      'message': instance.message,
      'success': instance.success,
      'statusCode': instance.statusCode,
    };
