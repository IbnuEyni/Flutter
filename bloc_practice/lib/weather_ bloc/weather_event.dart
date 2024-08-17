import 'package:equatable/equatable.dart';

sealed class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class GetWeather extends WeatherEvent {
  final String cityName;

  GetWeather({required this.cityName});
  @override
  List<Object> get props => [cityName];
}
