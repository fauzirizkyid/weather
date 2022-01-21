part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _Initial;
  const factory WeatherState.loading() = _Loading;
  const factory WeatherState.weatherLoaded({
    required Option<Either<WeatherFailure, IList<WeatherModel>>> optionFailedOrSuccess,
  }) = _Loaded;
}
