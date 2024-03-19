import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colors.dart';
import 'package:flutter_application_2/models/restaraunt.dart';
import 'package:flutter_application_2/models/tags.dart';
import 'package:flutter_application_2/screens/home/home.dart';
import 'package:flutter_application_2/screens/restaurant_list/restaraunt_info.dart';
import 'package:flutter_application_2/screens/restaurant_list/restaraunt_tags.dart';
import 'package:flutter_application_2/screens/restaurant_list/restaurant_item.dart';
import 'package:flutter_application_2/widgets/custom_app_bar.dart';
import 'package:flutter_application_2/models/food.dart';
import 'package:bottom_nav_layout/bottom_nav_layout.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_application_2/widgets/custom_nav_bar.dart';
import 'package:flutter_application_2/widgets/pages.dart';

class RestaurantCatalog extends StatefulWidget {
  @override
  _RestaurantCatalogState createState() => _RestaurantCatalogState();
}

class _RestaurantCatalogState extends State<RestaurantCatalog> {
  final PageController pageController = PageController();
  var currentIndex = 0;
  var selected = 0;
  final List<Tag> tags = [Tag('Fast Food'), Tag('MM Food'), Tag("Beer"), Tag('Japanese'), Tag('Ching chong')];
  final List<Restaurant> restaurants = [
    Restaurant(
      'KFC',
      '30-45',
      '2km',
      'KFC',
      'https://images.unsplash.com/photo-1612222869049-d8ec83637a3c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGNoaWNrZW4lMjBsb2dvfGVufDB8fDB8fHww',
      'desc',
      {
        'Appetizers': [
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
            'Описание...',
            true,
          ),
        ]
      },
      1,
    )
  ];

  List<String> itemsList = [
    'https://varro.imgix.net/1680590502894.jfif?w=600&h=370&fit=scale&q=65',
    'https://varro.imgix.net/1680590539865.jfif?w=600&h=370&fit=scale&q=65',
    'https://varro.imgix.net/1680600677822.jpg?w=600&h=370&fit=scale&q=65',
    'https://varro.imgix.net/1680600689626.jpg?w=600&h=370&fit=scale&q=65',
    'https://varro.imgix.net/1680600702003.jpg?w=600&h=370&fit=scale&q=65',
  ];
  int pageindex=0;
      void onTabTapped(int index) {
      print(pageindex);
      setState(() {pageindex = index;});
      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  pages[pageindex]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        elevation: 2,
        child: Icon(Icons.shopping_basket, size: 30, color: Colors.black),
      ),
      bottomNavigationBar:  CustomNavbar(onTabTapped),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(leftIcon: Icons.arrow_back_ios_new, rightIcon: Icons.search_off_outlined),
            Container(
              padding: EdgeInsets.only(top: 10, left: 17, right: 17),
              child: Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 170.0,
                        viewportFraction: 0.9,
                        initialPage: 0,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          setState() {
                            currentIndex = index;
                          };
                        }),
                    items: itemsList.map((item) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Image.network(item, fit: BoxFit.cover, width: 1000.0),
                      );
                    }).toList(),
                  ),
                  DotsIndicator(
                    dotsCount: itemsList.length,
                    position: currentIndex,
                    decorator: DotsDecorator(
                      color: kPrimaryColor.withOpacity(0.6),
                      activeColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                      activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                      size: Size(10, 10),
                    ),
                  ),
                
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Restaurants',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  TagList(selected,  (int index) {
                    setState(() {
                      selected = index;
                    });
                                     },
              tags),
                  Container(
                    height: 500, // Задайте подходящую высоту
                    child: PageView.builder(
                      controller: pageController,
                      onPageChanged: (index) {
                          setState() {
                            selected = index;
                            pageController.jumpToPage(index);
                          }
                      },
                      itemCount: restaurants.length,
                      itemBuilder: (context, index) => ListView.builder(
                        itemCount: restaurants.length,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  HomePage(restaurants[index])));
                            },
                          child: RestarauntItem(restaurants[index]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
