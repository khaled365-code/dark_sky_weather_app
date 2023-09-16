import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_api_service.dart';
import 'package:weather_app/views/home_page.dart';

import '../cubits/getforcastweather_cubit/getforcastweather_cubit.dart';
import '../widgets/showweather_widget.dart';





class Searchscreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(
      title: Text('Search city',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),

    ),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: TextField(
          onSubmitted: (value)
            {
              var cubitvalue= BlocProvider.of<GetforcastweatherCubit>(context);
              cubitvalue.getForcastWeather(cityName: value);
              Navigator.pop(context);
            },
          decoration: InputDecoration(
            contentPadding: EdgeInsetsDirectional.symmetric(
              vertical: 30,horizontal: 16
            ),
            suffixIcon: Icon(Icons.search,size: 30,),
            hintText: 'Enter a city',
            hintStyle: TextStyle(fontSize: 20,color: Colors.grey),
            label:Text('Search for city',style: TextStyle(fontSize: 20,color: Colors.black),),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          )
        ),
      ),
    ),

  );
  }
}

