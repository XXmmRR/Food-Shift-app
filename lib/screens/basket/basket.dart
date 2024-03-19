import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/custom_app_bar.dart';
import 'package:flutter_application_2/widgets/custom_nav_bar.dart';
import 'package:flutter_application_2/widgets/pages.dart';

class Basket extends StatefulWidget {
  const Basket({super.key});
  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  int pageindex = 0;

  void onTabTapped(int index) {
  setState(() {pageindex = index;});
  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  pages[pageindex]));
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      bottomNavigationBar: CustomNavbar(onTabTapped),
      body: Center(child: Column(children: [
        CustomAppBar(leftIcon: Icons.arrow_back_ios_new, rightIcon: null),
        Image.network('https://cdn4.iconfinder.com/data/icons/smooth-3d-for-online-stores/512/shopping-basket.png', fit: BoxFit.cover, height: 300,), 
        Text('Basket is empty')],)),
      );
  }
}