import 'package:equatable/equatable.dart';

class Weather extends Equatable {
  final String cityName;
  final double temprature;

  Weather({required this.cityName, required this.temprature});

  @override
  List<Object?> get props => [cityName, temprature];
}
