import 'package:flutter/material.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/models/weather_model.dart';





class Showweather extends StatelessWidget {

   Weathermodel weathermodel;

  Showweather({required this.weathermodel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient:  LinearGradient(
          colors: [
            getthemeColor(weathermodel.condition),
            getthemeColor(weathermodel.condition)[300]!,
            getthemeColor(weathermodel.condition)[50]!
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        )
      ),
      child: Padding(
        padding:  EdgeInsets.only(left: 40,right: 50,top: 170),
        child: Center(
          child: Column(
            children: [
              Text(weathermodel.city,style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Text('updated at  ${weathermodel.date.hour} : ${weathermodel.date.minute}',style: TextStyle(fontSize: 20,color: Colors.black),),
              SizedBox(height: 35,),
              Row(
                children: [
                  Image.network(weathermodel.image.contains('https:')? weathermodel.image : 'https:${weathermodel.image}',fit: BoxFit.cover,),
                  SizedBox(width: 35,),
                  Text('${weathermodel.temp.round()}',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Text('Maxtemp: ${weathermodel.maxTemp.round()}',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Text('Mintemp: ${weathermodel.minTemp.round()}',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                    ],
                  )
                ],
              ),
              SizedBox(height: 30,),
              Text('${weathermodel.condition}',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),



            ],
          ),
        ),
      ),
    );

  }
}
