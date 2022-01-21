import 'package:code_id_network/code_interfaces/services/i_network_service.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/domain/weather/i_weather_repository.dart';
import 'package:weather/domain/weather/weather_failure.dart';
import 'package:weather/infrastructure/core/link_connect.dart';
import 'package:weather/infrastructure/core/models/base_response/base_response.dart';
import 'package:weather/infrastructure/weather/cities/models/cities_model.dart';
import 'package:weather/infrastructure/weather/models/weather_model.dart';

@LazySingleton(as: IWeatherRepository)
class WeatherRepository extends IWeatherRepository {
  WeatherRepository(this._networkService);

  final INetworkService _networkService;

  @override
  Future<Either<WeatherFailure, IList<CitiesModel>>> getCities() {
    // TODO: implement getCities
    throw UnimplementedError();
  }

  @override
  Future<Either<WeatherFailure, IList<WeatherModel>>> getWeather(
      {required int cityId}) async {
    final response = await _networkService.getHttp(
      path: UrlPath.weather,
      queryParameter: {
        'id': cityId,
        'appid': dotenv.get('WEATHER_MID'),
        'units': 'metric',
      },
    );

    return response.match(
      (l) => l.when(
        noInternet: () => left(const WeatherFailure.noInternet()),
        serverError: (res) => left(const WeatherFailure.serverError()),
        timeout: () => left(const WeatherFailure.serverError()),
        other: (val) => left(const WeatherFailure.serverError()),
      ),
      (r) {
        final _base = BaseResponse.fromJson(r as Map<String, dynamic>);

        if (_base.meta.success) {
          final weather = IList<WeatherModel>.fromJson(
            _base.data,
            (val) => WeatherModel.fromJson(
              val as Map<String, dynamic>,
            ),
          );

          if (weather.isEmpty) {
            return left(const WeatherFailure.cityNotFound());
          } else {
            return right(weather);
          }
        }
        return left(const WeatherFailure.serverError());
      },
    );
  }
}
