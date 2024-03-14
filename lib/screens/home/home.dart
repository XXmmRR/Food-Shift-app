import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colors.dart';
import 'package:flutter_application_2/models/restaraunt.dart';
import 'package:flutter_application_2/screens/home/widget/food_list.dart';
import 'package:flutter_application_2/screens/home/widget/food_list_view.dart';
import 'package:flutter_application_2/screens/home/widget/restaraunt_info.dart';
import 'package:flutter_application_2/widgets/custom_app_bar.dart';
import 'package:flutter_application_2/models/food.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


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
              'https://cdn.pixabay.com/photo/2021/08/06/09/09/food-6525694_1280.png',
              'Fresh salad',
              'Salad',
              '10 minutes',
              4.5,
              '200',
              5.99,
              1,
              [{'Noodles': 'https://cdn-icons-png.flaticon.com/512/7592/7592287.png'}],
              ' Повседневная практика показывает, что постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет оценить значение форм развития. Значимость этих проблем настолько очевидна, что сложившаяся структура организации позволяет оценить значение систем массового участия. Разнообразный и богатый опыт укрепление и развитие структуры требуют определения и уточнения соответствующий условий активизации. Таким образом новая модель организационной деятельности в значительной степени обуславливает создание системы обучения кадров, соответствует насущным потребностям. ',
              true,
            ),]},
    1
  );


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
          }, restaurant
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
              restaurant
            ) 
            ),
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: SmoothPageIndicator(controller: pageController, count: restaurant.menu.length,
              effect: CustomizableEffect(dotDecoration: DotDecoration(width: 8, height: 8, color: Colors.grey.withOpacity(0.5), borderRadius: BorderRadius.circular(8)),
                                        activeDotDecoration: DotDecoration(width: 10, height: 8, color: kBackground, borderRadius: BorderRadius.circular(10), dotBorder: DotBorder(color: kPrimaryColor, padding: 2, width: 2))),
              ),
            )
        ],
        
      )
      );
  }
}