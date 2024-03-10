import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/food.dart';
import 'package:flutter_application_2/models/restaraunt.dart';
import 'package:flutter_application_2/screens/details/detail.dart';
import 'package:flutter_application_2/screens/home/widget/food_item.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Restaurant restaurant;
  FoodListView(this.selected, this.callback, this.pageController, this.restaurant);

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: category.map((e) {
          final foods = restaurant.menu[e]!;
          return ListView.separated(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  DetailPage(foods[index])));
              },
              child: FoodItem(foods[index])
              ),
            separatorBuilder: (_, index) => SizedBox(height: 15,),
            itemCount: foods.length,
          );
        }).toList(),
      ),
    );
  }
}