import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/food.dart';

class FoodItem extends StatelessWidget {
  final Food food;
  FoodItem(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(food.name),
    );
  }
}