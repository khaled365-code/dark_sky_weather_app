import 'package:flutter/material.dart';






class Nobodywidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 300,horizontal: 20),
      child: Center(
        child: Column(
          children: [
            Text('There is no weather 😞 start',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
            Text('searching now 🔍',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),

          ],
        ),
      ),
    );
  }
}
