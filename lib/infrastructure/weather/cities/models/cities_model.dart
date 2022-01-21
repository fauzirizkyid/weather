import 'package:freezed_annotation/freezed_annotation.dart';

part 'cities_model.freezed.dart';
part 'cities_model.g.dart';

@freezed
class CitiesModel with _$CitiesModel {
  factory CitiesModel({
    required int id,
    required String name,
    required String country,
  }) = _CitiesModel;

  factory CitiesModel.fromJson(Map<String, dynamic> json) =>
      _$CitiesModelFromJson(json);
}
