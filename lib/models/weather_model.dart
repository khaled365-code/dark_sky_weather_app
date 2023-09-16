


class Weathermodel
{
   final String city;
   final  DateTime date;
   final String image;
   final double temp;
   final double maxTemp;
   final double minTemp;
   final String condition;

  Weathermodel({required this.city,required this.date,required this.image,required this.temp,required this.maxTemp,required this.minTemp,required this.condition});


   factory Weathermodel.fromJson(json)
  {
    return Weathermodel(
      city: json['location']['name'] ,
      date: DateTime.parse(json['current']['last_updated']),
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'] ,
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      condition: json['forecast']['forecastday'][0]['day']['condition']['text'],

    );

  }

}