import 'dart:math';

import 'package:bloc_practice/model/weather.dart';
import 'package:bloc_practice/weather_%20bloc/weather_event.dart';
import 'package:bloc_practice/weather_%20bloc/weather_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
    on<GetWeather>((event, emit) async {
      emit(WeatherLoading());
      final weather = await _fetchWeatherFromFakeApi(event.cityName);
      emit(WeatherLoaded(weather: weather));
    });
  }
}

Future<Weather> _fetchWeatherFromFakeApi(String cityName) {
  return Future.delayed(
    const Duration(seconds: 1),
    () {
      return Weather(
        cityName: cityName,
        temprature: 20 + Random().nextInt(15) + Random().nextDouble(),
      );
    },
  );
}
