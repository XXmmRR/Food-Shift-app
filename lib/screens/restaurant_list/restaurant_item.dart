import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colors.dart';
import 'package:flutter_application_2/models/food.dart';
import 'package:flutter_application_2/models/restaraunt.dart';


class RestarauntItem extends StatelessWidget {
  final Restaurant restaurant;
  RestarauntItem(this.restaurant);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            width: 110,
            height: 110,
            child: Image.network(restaurant.logoUrl, fit: BoxFit.fitHeight),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Распределение по вертикали
                children: [
                  Text(
                    restaurant.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        // Обеспечивает, что текст не выйдет за рамки экрана
                        child: Text(
                          restaurant.desc,
                          style: TextStyle(
                              color: kPrimaryColor,
                              height: 1.5),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios_outlined, size: 15),
                    ],
                  ),
                  Text(
                    '${restaurant.distance} \$',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}