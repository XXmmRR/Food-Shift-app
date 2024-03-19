import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colors.dart';
import 'package:flutter_application_2/models/restaraunt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colors.dart';
import 'package:flutter_application_2/models/restaraunt.dart';
import 'package:flutter_application_2/screens/home/widget/food_list.dart';
import 'package:flutter_application_2/screens/home/widget/food_list_view.dart';
import 'package:flutter_application_2/screens/restaurant_list/restaraunt_info.dart';
import 'package:flutter_application_2/widgets/custom_app_bar.dart';
import 'package:flutter_application_2/models/food.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class HomePage extends StatefulWidget {
  final Restaurant restaurant;
  const HomePage(this.restaurant);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageController = PageController();
  var selected = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}, backgroundColor: kPrimaryColor, elevation: 2, child: Icon(Icons.shopping_basket, size: 30, color: Colors.black,),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(leftIcon: Icons.arrow_back_ios_new, rightIcon: Icons.search_off_outlined),
          RestarauntInfo(),
          FoodList(selected, (int index) {
              setState() {
                selected = index;
                pageController.jumpToPage(index);
              }
          }, widget.restaurant
          ),
          Expanded(
            child: FoodListView(
              selected,
              (int index) {
                setState(() {
                  selected = index;
                                  
                });
              },
              pageController,
              widget.restaurant
            ) 
            ),
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: SmoothPageIndicator(controller: pageController, count: widget.restaurant.menu.length,
              effect: CustomizableEffect(dotDecoration: DotDecoration(width: 8, height: 8, color: Colors.grey.withOpacity(0.5), borderRadius: BorderRadius.circular(8)),
                                        activeDotDecoration: DotDecoration(width: 10, height: 8, color: kBackground, borderRadius: BorderRadius.circular(10), dotBorder: DotBorder(color: kPrimaryColor, padding: 2, width: 2))),
              ),
            )
        ],
        
      )
      );
  }
}