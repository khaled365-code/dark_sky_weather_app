import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/views/home_page.dart';

import 'cubits/getforcastweather_cubit/getforcastweather_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetforcastweatherCubit(),
      child: Builder(
          builder: (context) {
            return BlocBuilder<GetforcastweatherCubit, GetforcastweatherState>(
              builder: (context, state) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    primarySwatch: getthemeColor(BlocProvider.of<GetforcastweatherCubit>(context).weathermodel?.condition),
                  ),
                  home: Homescreen(),
                );
              },
            );
          }
      ),
    );
  }

}
MaterialColor getthemeColor(String? condition) {
  if (condition == null) {
    return Colors.brown;
  }
  switch (condition) {
    case "Sunny":
      return Colors.amber;
    case "Partly cloudy":
      return Colors.blueGrey;
    case "Cloudy":
      return Colors.grey;
    case "Overcast":
      return Colors.grey;
    case "Mist":
      return Colors.grey;
    case "Patchy rain possible":
      return Colors.lightBlue;
    case "Patchy snow possible":
      return Colors.blue;
    case "Patchy sleet possible":
      return Colors.lightBlue;
    case "Patchy freezing drizzle possible":
      return Colors.blue;
    case "Thundery outbreaks possible":
      return Colors.deepOrange;
    case "Blowing snow":
      return Colors.grey;
    case "Blizzard":
      return Colors.grey;
    case "Fog":
      return Colors.grey;
    case "Freezing fog":
      return Colors.grey;
    case "Patchy light drizzle":
      return Colors.lightBlue;
    case "Light drizzle":
      return Colors.lightBlue;
    case "Freezing drizzle":
      return Colors.blue;
    case "Heavy freezing drizzle":
      return Colors.blue;
    case "Patchy light rain":
      return Colors.lightBlue;
    case "Light rain":
      return Colors.lightBlue;
    case "Moderate rain at times":
      return Colors.blue;
    case "Moderate rain":
      return Colors.blue;
    case "Heavy rain at times":
      return Colors.blue;
    case "Heavy rain":
      return Colors.blue;
    case "Light freezing rain":
      return Colors.blue;
    case "Moderate or heavy freezing rain":
      return Colors.blue;
    case "Light sleet":
      return Colors.blue;
    case "Moderate or heavy sleet":
      return Colors.blue;
    case "Patchy light snow":
      return Colors.blue;
    case "Light snow":
      return Colors.blue;
    case "Patchy moderate snow":
      return Colors.blue;
    case "Moderate snow":
      return Colors.blue;
    case "Patchy heavy snow":
      return Colors.blue;
    case "Heavy snow":
      return Colors.blue;
    case "Ice pellets":
      return Colors.blue;
    case "Light rain shower":
      return Colors.lightBlue;
    case "Moderate or heavy rain shower":
      return Colors.blue;
    case "Torrential rain shower":
      return Colors.blue;
    case "Light sleet showers":
      return Colors.blue;
    case "Moderate or heavy sleet showers":
      return Colors.blue;
    case "Light snow showers":
      return Colors.blue;
    case "Moderate or heavy snow showers":
      return Colors.blue;
    case "Light showers of ice pellets":
      return Colors.blue;
    case "Moderate or heavy showers of ice pellets":
      return Colors.blue;
    case "Patchy light rain with thunder":
      return Colors.deepOrange;
    case "Moderate or heavy rain with thunder":
      return Colors.deepOrange;
    case "Patchy light snow with thunder":
      return Colors.deepOrange;
    case "Moderate or heavy snow with thunder":
      return Colors.deepOrange;
    default:
      return Colors.grey; // Default color if condition is not found
  }
}


