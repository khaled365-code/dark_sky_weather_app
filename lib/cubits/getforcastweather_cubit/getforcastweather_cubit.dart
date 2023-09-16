import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../models/weather_model.dart';
import '../../services/weather_api_service.dart';

part 'getforcastweather_state.dart';

class GetforcastweatherCubit extends Cubit<GetforcastweatherState> {
  GetforcastweatherCubit() : super(getforcastweatherInitial());


  Weathermodel? weathermodel;

  getForcastWeather({ required String cityName}) async
  {

    try {
       weathermodel = await WeatherApi(dio: Dio())
          .getforcastWeather(cityName: cityName);
      emit(WeatherSuccessState(weathermodel:weathermodel! ));
    }catch (e)
    {
      emit(WeatherFailureState());
    }
  }


}
