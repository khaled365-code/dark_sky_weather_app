part of 'getforcastweather_cubit.dart';

@immutable
abstract class GetforcastweatherState {}

class getforcastweatherInitial extends GetforcastweatherState {}

class WeatherFailureState extends  GetforcastweatherState{}

class WeatherSuccessState extends  GetforcastweatherState{
   Weathermodel weathermodel;
  WeatherSuccessState({required this.weathermodel});

}
