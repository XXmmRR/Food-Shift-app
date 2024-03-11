import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colors.dart';
import 'package:flutter_application_2/models/food.dart';

Widget _buildIconText(IconData icon, Color color, String text ) {
    return Row(
      children: [
        Icon(icon, 
            color: color,
            size: 20,),
        Text(text, style: TextStyle(
          fontSize: 16
        ),)
      ],
    );  
    }

    
class FoodDetail extends StatelessWidget {
  final Food food;
  const FoodDetail(this.food  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      color: kBackground,
      child: Column(children: [
        Text(food.name, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildIconText(Icons.access_time_outlined, 
                          Colors.blue,
                          food.waitTime
                          )
          ],
        ),

      ],),

      );
  }
  

}