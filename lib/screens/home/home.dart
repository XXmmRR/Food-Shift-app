import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home/widget/restaraunt_info.dart';
import 'package:flutter_application_2/widgets/custom_app_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(leftIcon: Icons.arrow_back_ios_new, rightIcon: Icons.search_off_outlined),
          RestarauntInfo()
        ],
        
      )
      );
  }
}