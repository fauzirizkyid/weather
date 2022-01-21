import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_failure.freezed.dart';

@freezed
class WeatherFailure with _$WeatherFailure{
  const factory WeatherFailure.noInternet() = _NoInternet;
  const factory WeatherFailure.serverError() = _ServerError;
  const factory WeatherFailure.cityNotFound() = _CityNotFound;
}