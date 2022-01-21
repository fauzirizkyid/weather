import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:weather/domain/weather/weather_failure.dart';
import 'package:weather/infrastructure/weather/cities/models/cities_model.dart';
import 'package:weather/infrastructure/weather/models/weather_model.dart';

abstract class IWeatherRepository {
  Future<Either<WeatherFailure, IList<CitiesModel>>> getCities();
  Future<Either<WeatherFailure, IList<WeatherModel>>> getWeather({
    required int cityId,
  });
}
