import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/views/search_page.dart';
import 'package:weather_app/widgets/nobody_widget.dart';
import 'package:weather_app/widgets/showweather_widget.dart';

import '../cubits/getforcastweather_cubit/getforcastweather_cubit.dart';


class Homescreen extends StatefulWidget {


  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text('Weather App', style: TextStyle(
            fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Searchscreen(),));
                },
                icon: Icon(Icons.search, color: Colors.white, size: 40,)),
          ),
        ],
      ),
      body: BlocBuilder<GetforcastweatherCubit, GetforcastweatherState>(
        builder: (context, state)
        {
          if(state is getforcastweatherInitial)
            {
              return Nobodywidget();
            }
          else if(state is WeatherSuccessState)
          {
            return Showweather(weathermodel: state.weathermodel );
          }
          else
            {
              return  Padding(
                padding:  EdgeInsets.symmetric(vertical: 300,horizontal: 20),
                child: Text('There is an error try later',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
              );
            }

        },
      ),


    );
  }
}
