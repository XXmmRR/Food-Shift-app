import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/constants/colors.dart';
import 'package:flutter_application_2/models/food.dart';
import 'package:flutter_application_2/models/restaraunt.dart';

class RestarauntInfo extends StatelessWidget {
  // Добавлен вызов конструктора родительского класса с параметром key
  RestarauntInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Создание экземпляра класса Restaurant в методе build
    final restaurant = Restaurant(
      'KFC', 
      '30-45', 
      '2km', 
      'KFC', 
      'https://images.unsplash.com/photo-1612222869049-d8ec83637a3c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGNoaWNrZW4lMjBsb2dvfGVufDB8fDB8fHww', 
      'desc', 
      {}, 
      1
    );

    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant.name, 
                    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          restaurant.waitTime, 
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        restaurant.distance, 
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey.withOpacity(0.4)),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        restaurant.label, 
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey.withOpacity(0.4)),
                      ),
                    ],
                  ),
                ],
              ),
              
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(restaurant.logoUrl, width: 80,),
              )
            ],
          )
        ],
      ),
    );
  }
}