import 'package:freezed_annotation/freezed_annotation.dart';

part 'info.freezed.dart';
part 'info.g.dart';

@freezed
class PageInfo with _$PageInfo {
  factory PageInfo({
    required int count,
    required bool moreRecords,
    required int page,
    required int pageSize,
    required String orderBy,
    required String sortBy,
  }) = _PageInfo;

  factory PageInfo.fromJson(Map<String, dynamic> json) =>
      _$PageInfoFromJson(json);
}
