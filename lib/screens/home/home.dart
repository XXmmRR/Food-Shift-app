import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/restaraunt.dart';
import 'package:flutter_application_2/screens/home/widget/food_list.dart';
import 'package:flutter_application_2/screens/home/widget/restaraunt_info.dart';
import 'package:flutter_application_2/widgets/custom_app_bar.dart';
import 'package:flutter_application_2/models/food.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageController = PageController();
  var selected = 0;
    final restaurant = Restaurant(
    'KFC', 
    '30-45', 
    '2km', 
    'KFC', 
    'https://images.unsplash.com/photo-1612222869049-d8ec83637a3c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGNoaWNrZW4lMjBsb2dvfGVufDB8fDB8fHww', 
    'desc', 
    {          'Appetizers': [
            Food(
              'https://example.com/food1.jpg',
              'Fresh salad with mixed greens',
              'Salad',
              '10 minutes',
              4.5,
              '200',
              5.99,
              1,
              [],
              'A refreshing starter',
              true,
            ),]},
    1
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(leftIcon: Icons.arrow_back_ios_new, rightIcon: Icons.search_off_outlined),
          RestarauntInfo(),
          FoodList(selected, (int index) {
              setState() {
                selected = index;
                pageController.jumpToPage(index)
              }
          }, restaurant
          ),
          Expanded(
            child: FoodListView(
              selected,
              (int index) {
                setState(() {
                  selected = index;
                                  pageController;
                });
              }
            ) 
            )
        ],
        
      )
      );
  }
}