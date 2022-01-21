import 'package:bloc/bloc.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/application/auth/auth_bloc.dart';
import 'package:weather/domain/weather/i_weather_repository.dart';
import 'package:weather/domain/weather/weather_failure.dart';
import 'package:weather/infrastructure/weather/models/weather_model.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IWeatherRepository _weatherRepository;

  WeatherBloc(this._weatherRepository) : super(const WeatherState.initial()) {
    on<WeatherEvent>((event, emit) async {
      await event.when(
        cityLoaded: (value) async {
          emit(const WeatherState.loading());

          final failedOrSuccess =
              await _weatherRepository.getWeather(cityId: value);

          emit(
            WeatherState.weatherLoaded(
              optionFailedOrSuccess: optionOf(failedOrSuccess),
            ),
          );
        },
        started: () {},
      );
    });
  }
}
