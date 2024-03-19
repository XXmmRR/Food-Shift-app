
import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colors.dart';

class CustomNavbar extends StatelessWidget {
  final Function(int)? onTabTapped;
  const CustomNavbar(this.onTabTapped);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,
        onTap: onTabTapped,
        selectedItemColor: kPrimaryColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.all_inbox_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined), label: ''),
        ],
      );
  }
}