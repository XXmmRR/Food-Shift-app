import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/basket/basket.dart';
import 'package:flutter_application_2/screens/home/home.dart';
import 'package:flutter_application_2/screens/profile/order_history.dart';
import 'package:flutter_application_2/screens/profile/profile.dart';
import 'package:flutter_application_2/screens/restaurant_list/restaraunt_catalog.dart';
import 'package:flutter_application_2/screens/search/search.dart';  

final List<Widget> pages = [
    RestaurantCatalog(),
    SearchWidget(),
    Basket(),
    OrderHistory(),
    ProfilePage(),
  ];