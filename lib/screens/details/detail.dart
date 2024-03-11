import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colors.dart';
import 'package:flutter_application_2/models/food.dart';
import 'package:flutter_application_2/screens/details/widget/food_detail.dart';
import 'package:flutter_application_2/screens/details/widget/food_img.dart';
import 'package:flutter_application_2/widgets/custom_app_bar.dart';

class DetailPage extends StatelessWidget {
  final Food food;
  const DetailPage(this.food);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kPrimaryColor,
      body:  SingleChildScrollView(child: Column(children: [
        CustomAppBar(leftIcon: Icons.arrow_back_ios_outlined, 
                     rightIcon: Icons.favorite_outline,
                     leftCallback: () => Navigator.of(context).pop(),
                     ),
        FoodImg(food),
        FoodDetail(food),       
      ],),),
    );
  }
}