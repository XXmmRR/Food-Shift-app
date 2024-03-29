import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colors.dart';
import 'package:flutter_application_2/models/food.dart';

class FoodImg extends StatelessWidget {
  final Food food;
  const FoodImg(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        children: [
          Column(children: [
            Expanded(
            flex: 1,
            child: Container()
            ), 
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))),
            )
            )
          ],),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.all(5),
              child: Image.network(food.imgUrl, fit: BoxFit.cover),
              width: 250,
              height: 250,
              decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.3),
                 offset: Offset(-1, 10),
                 blurRadius: 10
                 ),
                 ]
                ),
            ),
          )

          
        ],
      ),
    );
  }
}