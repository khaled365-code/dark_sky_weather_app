
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/weather_model.dart';



class WeatherApi
{
   final  Dio dio;
   final String baseUrl='https://api.weatherapi.com/v1';
   final String apiKey='b8483859a7a04d2ab6d112724231009%20&q';
   WeatherApi({required this.dio});
  Future<Weathermodel> getforcastWeather({required String cityName}) async
  {

    try {
      Response response = await dio.get(
          '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1&aqi=no&alerts=no');

      Weathermodel weathermodel = Weathermodel.fromJson(response.data);

      return weathermodel;
    } on DioException catch(e)
    {
     final String errorMessage=e.response?.data['error']['message'] ?? 'oops There is a problem, try again later';
     throw Exception(errorMessage);
    }catch (e)
    {
      log(e.toString());
      throw Exception('oops There is a problem, try again later');
    }


  }









}