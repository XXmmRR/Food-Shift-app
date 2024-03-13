import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colors.dart';
import 'package:flutter_application_2/models/restaraunt.dart';
import 'package:flutter_application_2/widgets/custom_app_bar.dart';
import 'package:flutter_application_2/models/food.dart';
import 'package:bottom_nav_layout/bottom_nav_layout.dart';
import 'package:dots_indicator/dots_indicator.dart';


class RestarauntCatalog extends StatefulWidget {
  const RestarauntCatalog({super.key});

  @override
  State<RestarauntCatalog> createState() => _RestarauntCatalogState();
}

class _RestarauntCatalogState extends State<RestarauntCatalog> {
  final pageController = PageController();
  var selected = 0;
  var _current = 0;
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
   List<String> itemsList = [
    'https://varro.imgix.net/1680590502894.jfif?w=600&h=370&fit=scale&q=65',
      'https://varro.imgix.net/1680590539865.jfif?w=600&h=370&fit=scale&q=65',
      'https://varro.imgix.net/1680600677822.jpg?w=600&h=370&fit=scale&q=65',
      'https://varro.imgix.net/1680600689626.jpg?w=600&h=370&fit=scale&q=65',
      'https://varro.imgix.net/1680600702003.jpg?w=600&h=370&fit=scale&q=65',
  ];
  int currentIndex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}, backgroundColor: kPrimaryColor, elevation: 2, child: Icon(Icons.shopping_basket, size: 30, color: Colors.black,),),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey,
          selectedItemColor: kPrimaryColor,
          items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: '' ),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.all_inbox_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined), label: ''),
        ],),
        body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(leftIcon: Icons.arrow_back_ios_new, rightIcon: Icons.search_off_outlined),
          
          Container(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10,),
            child: 
          Column(children: [
            CarouselSlider(
            options: CarouselOptions(
                height: 170.0,
                viewportFraction: 1.5,
                initialPage: 0,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
            items: itemsList
                .map(
                  (item) => itemsList.isEmpty
                      ? Image.asset(width: MediaQuery.of(context).size.width, 'assets/images/no_image_available.png')
                      : Image.network(
                          width: MediaQuery.of(context).size.width,
                          item,
                          fit: BoxFit.fill,
                        ),
                )
                .toList(),
          ),
          DotsIndicator(
            dotsCount: itemsList.length,
            position: currentIndex,
            decorator: DotsDecorator(
              color: kPrimaryColor.withOpacity(0.6),
              activeColor: kPrimaryColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              activeShape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              size: Size(10, 10),
            ),
          )
          ],),) 
          ]
      ),
    );
  }
}
