import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/custom_nav_bar.dart';
import 'package:flutter_application_2/widgets/pages.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
    int pageindex = 0;
    void onTabTapped(int index) {
      print(pageindex);
      setState(() {pageindex = index;});
      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  pages[pageindex]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Profile'),),
        bottomNavigationBar: CustomNavbar(onTabTapped),   
    );
  }
}