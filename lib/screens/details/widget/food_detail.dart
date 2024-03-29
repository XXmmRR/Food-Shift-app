import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colors.dart';
import 'package:flutter_application_2/models/food.dart';
import 'package:flutter_application_2/screens/details/widget/food_quantity.dart';

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
                          ),
            _buildIconText(Icons.start_outlined, 
                          Colors.amber,
                          food.score.toString()
                          ),
            _buildIconText(Icons.local_fire_department_outlined, 
                          Colors.red,
                          food.cal
                          )
          ],
          
        ),
        SizedBox(height: 30,),
        FoodQuantity(food),
        SizedBox(height: 30,),
        Row(children: [
          Text('Ingritients', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
        ],),
        SizedBox(height: 10,),
        Container(
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40)
              ),
              child: Column(children: [
                Image.network(food.ingredients[index].values.first, width: 52,),
                Text(food.ingredients[index].keys.first)
              ],),
            ), 
            separatorBuilder: (_, index) => SizedBox(width: 15,), 
            itemCount: food.ingredients.length),
        ),
        SizedBox(height: 30,),
        Row(
          children: [Text('About', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)],
        ),
        SizedBox(height: 10,),
        Text(food.about, style: TextStyle(wordSpacing: 1.2, height: 1.5, fontSize: 16),)

      ],),
      
      );
  }
  

}