part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.started() = _Started;
  const factory WeatherEvent.cityLoaded({
    required int cityId,
  }) = _CityLoaded;
}
