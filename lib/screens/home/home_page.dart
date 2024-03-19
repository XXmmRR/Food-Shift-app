import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colors.dart';
import 'package:flutter_application_2/models/restaraunt.dart';
import 'package:flutter_application_2/screens/home/widget/food_list.dart';
import 'package:flutter_application_2/screens/home/widget/food_list_view.dart';
import 'package:flutter_application_2/screens/restaurant_list/restaraunt_info.dart';
import 'package:flutter_application_2/widgets/custom_app_bar.dart';
import 'package:flutter_application_2/widgets/pages.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pageindex = 0;
  @override
  Widget build(BuildContext context) {
      void onTabTapped(int index) {
      setState(() {
        pageindex = index;
        print(pageindex);
        });
  }
    return pages[pageindex];
  }
}