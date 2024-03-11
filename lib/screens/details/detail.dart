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
      floatingActionButton: Container(
        width: 100,
        height: 56,
        child: RawMaterialButton(onPressed: () {},
                                 fillColor: kPrimaryColor,
                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                 elevation: 2,
                                 child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.shopping_bag_outlined, color: Colors.black, size: 30,),
                                    Container(
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        color: Colors.white, 
                                        shape: BoxShape.circle
                                      ),
                                      child: Text(food.quantity.toString(), style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                                      
                                    )
                                  ],
                                 ),
                                 
                                ),

      ),
    );
  }
}